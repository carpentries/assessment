add_percent <- function(.data) {
  .data %>%
    mutate(percent = n / sum(n) * 100)
}

ggassessment_lolli <- function(data, mapping, color, wrap_width = 20,
                               nudge_x = .0125) {
  data$percent <- data$percent / 100
  if (!identical(substr(color, 1, 1), "#")) {
    color <- match.arg(color, c("swc", "dc", "cp"))
    color <- switch(color,
      swc = "#2f3f8e",
      dc  = "darkcyan",
      cp = "#071159")
  }

  ggplot(data, mapping) +
    geom_lollipop(col = color, horizontal = TRUE, point.size = 2.5) +
    geom_text(aes(label = n), size = 4, nudge_x = nudge_x, hjust = 0) +
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
    labs(x = "% Respondents",
      y = "",
      caption = "Number of answers reported on the graph")

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

  data_plot <- .data %>%
    dplyr::filter(!is.na(!!quo_var)) %>%
    dplyr::count(!!quo_var) %>%
    add_percent()

  if (is.null(label_levels)) {
    label_levels <- data_plot %>%
      dplyr::pull(!!quo_var) %>%
      unique()
  }

  data_plot <- data_plot %>%
    tidyr::complete(
      tidyr::crossing(
        !!str_var := label_levels
      ),
      fill = list(n = 0, percent = 0)
    )

  data_plot %>%
    ggassessment_lolli(
      aes(y = factor(!!quo_var, levels = label_levels), x = percent),
      color = "cp",
      wrap_width = wrap_width) +
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
  read_csv("../data/2020-longterm-survey/2020-longterm-column-names.csv")
}

get_answer_key <- function(col_name) {
  stopifnot(is.character(col_name))

  file_name <- file.path(
    "..", "data", "2020-longterm-survey",
    "2020-longterm-answer-key.csv"
  )

  read_csv(file_name) %>%
    dplyr::filter(column == col_name) %>%
    dplyr::select(- .data$column)

}

extract_title <- function(title_data, str_var) {
  title_data[["original_name"]][title_data$short_name == str_var]
}

prepare_plot_multi_data <- function(.data, var) {

  quo_var <- enquo(var)
  str_var <- quo_name(quo_var)

  answer_key <- get_answer_key(str_var)

  .data[[str_var]] <- gsub("([a-z\\)])([A-Z])", "\\1, \\2", .data[[str_var]])

  for (i in seq_along(answer_key$verbatim)) {
    .data[[str_var]] <- gsub(
      answer_key$verbatim[i],
      answer_key$short[i],
      .data[[str_var]],
      fixed = TRUE)
  }

  all_data <- .data %>%
    dplyr::select(!!quo_var) %>%
    tidyr::separate_rows(!!quo_var, sep = ";\\s?") %>%
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

plot_multi <- function(.data, var, label_levels = NULL, wrap_width = 20) {

  quo_var <- enquo(var)
  str_var <- quo_name(quo_var)

  prep_data <- prepare_plot_multi_data(
    .data,
    var = !!quo_var
  )

  n_answers <- prep_data$n_answers
  title_data <- col_names_table()
  title <- extract_title(title_data, str_var)

  data_plot <- prep_data$std_rsp_data %>%
    dplyr::select(- !!quo_var) %>%
    dplyr::rename(!!str_var := "verbatim") %>%
    dplyr::count(!!quo_var) %>%
    add_percent()

  if (is.null(label_levels)) {
    label_levels <- data_plot %>%
      dplyr::arrange(n) %>%
      dplyr::pull(!!quo_var) %>%
      unique()
  }

  lbl_widths <- .data %>%
    dplyr::pull(!!quo_var) %>%
    stringr::str_wrap(width = wrap_width)

  data_plot %>%
    ggassessment_lolli(
      aes(y = factor(!!quo_var, levels = label_levels), x = percent),
      color = "cp",
      wrap_width = wrap_width) +
    labs(
      title = str_wrap(paste0(title, " (n = ", n_answers, ")"), 58),
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

  col_nm_table <- col_names_table()

  plot_data <- .data %>%
    dplyr::select(tidyselect::starts_with(prefix)) %>%
    dplyr::select(-tidyselect::ends_with("open")) %>%
    tidyr::gather() %>%
    dplyr::count(key, value) %>%
    tidyr::complete(
      tidyr::crossing(
        key = dplyr::distinct(., key) %>% dplyr::pull(key),
        value = y_levels
      ),
      fill = list(n = 0)
    ) %>%
    filter(!is.na(value))

  lbler <- purrr::map_chr(unique(plot_data$key),
    function(.x) {
      title <- extract_title(col_nm_table, .x)
      n <- plot_data %>%
        dplyr::group_by(key) %>%
        dplyr::summarize(n = sum(n)) %>%
        dplyr::filter(key == .x) %>%
        dplyr::pull(n)
      paste0(title, " (n = ", n, ")")
    }) %>%
    stringr::str_wrap(40) %>%
    set_names(unique(plot_data$key))

  plot_data %>%
    group_by(key) %>%
    add_percent() %>%
    ggassessment_lolli(aes(y = factor(value, levels = y_levels),
      x = percent), color = "cp", nudge_x = .02) +
    facet_wrap(~ key, ncol = 2, labeller = as_labeller(lbler),
      scales = "free") +
    labs(
      title = str_wrap(title, 58)
    )
}
