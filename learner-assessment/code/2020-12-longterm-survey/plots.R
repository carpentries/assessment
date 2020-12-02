add_percent <- function(.d, denom = NULL) {
  if (is.null(denom)) {
    return(
      .d %>%
        dplyr::mutate(percent = .data$n / sum(.data$n) * 100)
    )
  }
  .d %>%
    dplyr::mutate(percent = .data$n / denom * 100)
}

ggassessment_lolli <- function(data, mapping, legend_labels, wrap_width = 20,
                               nudge_x = .0125) {
  
  data$percent <- data$percent / 100

  gg <- ggplot(data, mapping) +
    ## ggstance::geom_pointrangeh offers dodge option that geom_lollipop doesn't
    ## have
    ## geom_lollipop(horizontal = TRUE, point.size = 2.5)
    geom_pointrangeh(
      aes(xmin = 0), position = position_dodgev(height = 0.5)
    ) +
    geom_text(
      aes(label = n, group = year),
      size = 4,
      #nudge_x = nudge_x,
      hjust = -1, 
      position = position_dodge(.5)
    ) +
    scale_x_continuous(expand=c(0, 0), labels = scales::percent,
      breaks=seq(0, 1, by = 0.2), limits = c(0, 1.1)) +
    scale_y_discrete(labels = function(x)
      stringr::str_wrap(x, width = wrap_width)) +
    theme_minimal(base_size = 16) +
    theme(panel.grid.major.y = element_blank(),
      panel.grid.minor  = element_blank(),
      panel.spacing.x = unit(30, "pt"),
      axis.line.y = element_line(color="#2b2b2b"),
      plot.margin = unit(c(5, 30, 10, 30), "pt"),
      plot.title = element_text(margin = margin(r = 100, b = 10),
        face="bold"),
      plot.subtitle = element_text(margin = margin(b = 10)),
      plot.caption = element_text(size = 10, margin = margin(t = 10))) +
    labs(
      x = "% Respondents",
      y = "",
      caption = "Number of answers reported on the graph"
    )

  if (is.null(legend_labels)) {
    return(
      gg +
        scale_colour_manual(
          values = c("#071159", "#ea9220"),
          guide = FALSE
        )
    )
  }

  gg +
    scale_colour_manual(
      values = c("#071159", "#ea9220"),
      labels = legend_labels
    ) 
}

prepare_data_plot_single <- function(.data, quo_var) {
  n_answers <- .data %>%
    count(year) %>%
    pull(n, name = year)
  
  data_plot <- .data %>%
    dplyr::filter(!is.na(!!quo_var)) %>%
    dplyr::mutate(!!quo_var := gsub("\\.$", "", !!quo_var)) %>%
    split(., .$year)

  data_plot <- map_dfr(
    data_plot,
    function(.d) {
      .d %>%
        dplyr::count(!!quo_var) %>%
        add_percent()
    },
    .id = "year"
  )

  list(
    n_answers = n_answers,
    data_plot = data_plot
  )
}

plot_single <- function(.data, var, wrap_width = 20,
                        label_levels = NULL) {

  quo_var <- enquo(var)
  str_var <- quo_name(quo_var)

  title_data <- col_names_table()
  title <- extract_title(title_data, str_var)

  lbl_widths <- .data %>%
    dplyr::pull(!!quo_var) %>%
    stringr::str_wrap(width = wrap_width)

  data_plot <- prepare_data_plot_single(.data, quo_var)

  if (is.null(label_levels)) {
    label_levels <- data_plot$data_plot %>%
      dplyr::pull(!!quo_var) %>%
      unique()
  }

  data_plot$data_plot <- data_plot$data_plot %>%
    tidyr::complete(
      tidyr::crossing(
        year = unique(data_plot$data_plot$year),
        !!str_var := label_levels
      ),
      fill = list(n = 0, percent = 0)
    )

  legend_labels <- build_legend_labels(data_plot)

  data_plot$data_plot %>%
    ggassessment_lolli(
      aes(y = factor(!!quo_var, levels = label_levels), x = percent, xmax = percent, colour = year),
      wrap_width = wrap_width,
      legend_labels = legend_labels
    ) +
    labs(
      title = str_wrap(title, 58)
    ) +
    theme(
      axis.text.y = element_text(
        margin = margin(
          l = 1.1 - max(strwidth(lbl_widths, units = "in")),
          r = 0, unit = "in"
        )
      )
    )
}

col_names_table <- function() {
  read_csv("../data/2020-12-longterm-survey/2020-12-longterm-questions.csv")
}

get_answer_key <- function(col_name, year = c("2020", "2019")) {
  stopifnot(is.character(col_name))
  year <- match.arg(year)

  file_name <- switch(year,
    "2020" = file.path(
      "..", "data", "2020-12-longterm-survey",
      "2020-12-longterm-answer-key.csv"
    ),
    "2019" = file.path(
      "..", "data", "2020-longterm-survey",
      "2020-longterm-answer-key.csv"
    )
  )

  read_csv(file_name, col_types = cols(.default = "c")) %>%
    dplyr::filter(column == col_name) %>%
    dplyr::select(- .data$column)

}

extract_title <- function(title_data, str_var) {
  title_data[["full"]][title_data$short == str_var]
}

prepare_plot_multi_data_per_year <- function(.data, quo_var, str_var, year) {

  answer_key <- get_answer_key(str_var, year)

  .data[[str_var]] <- gsub("([a-z\\)])([A-Z])", "\\1, \\2", .data[[str_var]])

  for (i in seq_along(answer_key$verbatim)) {
    .data[[str_var]] <- gsub(
      answer_key$verbatim[i],
      answer_key$short[i],
      .data[[str_var]],
      fixed = TRUE)
  }

  all_data <- .data %>%
    dplyr::select(year, !!quo_var) %>%
    tidyr::separate_rows(!!quo_var, sep = ";") %>%
    dplyr::filter(!!quo_var != "") %>%
    dplyr::mutate(!!str_var := gsub("(\\s*$);(^\\s*)", "", !!quo_var))


  list(
    n_answers = .data %>% filter(!is.na(!!quo_var)) %>% nrow(),
    std_rsp_data = all_data %>%
      dplyr::mutate(!!str_var := dplyr::case_when(
        !(!!quo_var %in% answer_key$short) ~ "other",
        TRUE ~ !!quo_var
      )) %>%
      dplyr::inner_join(answer_key, by = setNames("short", str_var)),
    other_data = all_data %>%
      dplyr::anti_join(answer_key, by = setNames("short", str_var))
  )

}

prepare_plot_multi_data <- function(.data, var, year) {
  str_var <- quo_name(var)
  quo_var <- enquo(var)
  
  .data <- split(.data, .data$year)

  if (!is.null(year)) {
    stopifnot(all(year %in% names(.data)))
    .data  <- .data[year]
  }

  res <- map(.data, function(.d) {
    y <- unique(.d$year)
    prepare_plot_multi_data_per_year(.d, var, str_var, as.character(y))

  })

  data_plot <- res %>%
    map_df(function(.x) {
      .x$std_rsp_data %>%
        dplyr::select(- !!quo_var) %>%
        dplyr::rename(!!str_var := "verbatim") %>%
        dplyr::count(!!quo_var) %>%
        add_percent(denom = .x$n_answers)
    }, .id = "year")

  list(
    n_answers = map_int(res, "n_answers"),
    data_plot = data_plot,
    other_answers = map(res, "other_data")
  )

}


build_legend_labels <- function(prep_data) {
  if (identical(length(unique(prep_data$data_plot$year)), 1L)) {
    return(NULL)
  }

  legend_labels <- map2_chr(
    unique(prep_data$data_plot$year),
    prep_data$n_answers,
    ~ glue::glue(.x, " (n = { n_ans })", n_ans = .y)
  )
}


## if year is NULL, all years are included otherwise, we can subset only some
## years from the dataset by specifying a character vector `c("2020", "2018")`.
plot_multi <- function(.data, var, year = NULL, label_levels = NULL, wrap_width = 20) {

  quo_var <- enquo(var)
  str_var <- quo_name(quo_var)

  prep_data <- prepare_plot_multi_data(
    .data,
    var = quo_var,
    year = year
  )

  title_data <- col_names_table()
  title <- extract_title(title_data, str_var)

  data_plot <- prep_data$data_plot

  if (is.null(label_levels)) {
    label_levels <- data_plot %>%
      dplyr::arrange(n) %>%
      dplyr::pull(!!quo_var) %>%
      unique()
  }

  if (inherits(label_levels, "data.frame") &&
        all(names(label_levels) %in% c("short", "full_name"))) {
    data_plot <- dplyr::left_join(
      data_plot,
      label_levels,
      by = set_names("full_name", str_var)
    )

    label_levels_new <- data_plot %>%
      pull(short)

    data_plot <- data_plot %>%
      select(- !!quo_var) %>%
      rename(!!str_var := short)


    label_levels <- label_levels$short[match(label_levels_new, label_levels$short)]
  }

  lbl_widths <- .data %>%
    dplyr::pull(!!quo_var) %>%
    stringr::str_wrap(width = wrap_width)

  legend_labels <- build_legend_labels(prep_data)

  data_plot %>%
    ggassessment_lolli(
      aes(
        y = factor(!!quo_var, levels = label_levels),
        x = percent,
        xmax = percent,
        color = year
      ),
      legend_labels = legend_labels,
      wrap_width = wrap_width
    ) +
    labs(
      title = str_wrap(title, 58),
      caption = "Multiple answsers allowed"
    ) +
    theme(
      axis.text.y = element_text(
        margin = margin(
          l = max(.1, 1.1 - max(strwidth(lbl_widths, units = "in"))),
          r = 0, unit = "in")
      )
    )
}

plot_group <- function(.data, prefix, y_levels, title) {

  col_nm_table <- read_csv(
    "../data/2020-12-longterm-survey/2020-12-longterm-column-names.csv"
  )

  all_years <- unique(.data$year)

  plot_data <- .data %>%
    dplyr::select(year, tidyselect::starts_with(prefix)) %>%
    dplyr::select(-tidyselect::ends_with("open")) %>%
    tidyr::pivot_longer(-year) %>%
    dplyr::count(year, name, value) %>%
    tidyr::complete(
      tidyr::crossing(
        name = dplyr::distinct(., name) %>% dplyr::pull(name),
        year = all_years,
        value = y_levels
      ),
      fill = list(n = 0)
    ) %>%
    filter(!is.na(value))

  lbler <- purrr::map_chr(unique(plot_data$name),
    function(.x) {
      title <- extract_title(col_nm_table, .x) %>%
        stringr::str_wrap(40)
      
      n <- plot_data %>%
        dplyr::filter(name == .x) %>%
        dplyr::group_by(year) %>%
        dplyr::summarize(n = sum(n), .groups = "drop_last") %>%
        glue::glue_data("{ year }: n = { n }") %>%
        paste(., collapse = "; ", sep = "") %>%
        paste0(title, "\n(", ., ")")
    }) %>%
    set_names(unique(plot_data$name))

  plot_data %>%
    group_by(year, name) %>%
    add_percent() %>%
    ggassessment_lolli(
      aes(
        y = factor(x = value, levels = y_levels),
        x = percent,
        color = year, 
        xmax = percent,
        ),
      legend_labels = unique(plot_data$year)
    ) +
    facet_wrap(~ name, ncol = 2, labeller = as_labeller(lbler),
      scales = "free") +
    labs(
      title = str_wrap(title, 58)
    )

}


nps <- function(.data) {
  nps_data <- .data %>%
    dplyr::select(recommendation_score) %>%
    dplyr::filter(!is.na(recommendation_score)) %>%
    mutate(recommendation_score = as.numeric(recommendation_score)) %>%
    mutate(nps = case_when(
      recommendation_score >= 9 ~ "promoters",
      recommendation_score < 7 ~ "detractors",
      TRUE ~ "neutral"
    )) %>%
    group_by(nps) %>%
    summarize(
      n = n(),
      p = n()/nrow(.)* 100,
      .groups = "drop"
    ) %>%
    tidyr::complete(
      nps = c("promoters", "neutral", "detractors"),
      fill = list(n = 0, p = 0)
    )

  round(nps_data$p[nps_data$nps == "promoters"] -
          nps_data$p[nps_data$nps == "detractors"])

}

nps_plot <- function(nps) {
  tibble::tibble(nps = nps, y = 0) %>%
    ggplot() +
    geom_tile(
      data = tibble::tibble(
        x = seq(from = -100, to = 100, by = .5)
      ),
      aes(x = x, y = 0, fill = x), height = .2
    ) +
    scale_fill_viridis_c(option = "plasma") +
    geom_polygon(data = tibble::tibble(
      id = rep(1, 3),
      x = c(nps, nps - 2, nps + 2),
      y = c(.1, .2, .2)
    ),
    aes(x = x, y = y, group = id)
    ) +
    theme_minimal(base_size = 16) +
    xlim(c(-100, 100)) +
    ylim(c(-.1, .3)) +
    theme(
      axis.title.x = element_blank(),
      axis.title.y = element_blank(),
      axis.text.y = element_blank(),
      axis.ticks.y = element_blank(),
      axis.line.y = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      plot.margin = unit(c(.2, 0, 0, 0), units = "lines"),
      legend.position = "none"
    )
}
