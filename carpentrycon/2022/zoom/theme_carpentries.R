theme_carpentries <- function (base_family = "Lato", title_family = "Lato", 
                       subtitle_family = "Lato", axis_family = "Lato", 
                       base_color = "gray10", primary_color = "white", accent_color = "black", 
                       base_size = 10, mult1 = 1.2, mult2 = 1.4, mult3 = 1.5, mult4 = 2.25, 
                       gridlines = F, facet_outlines = F, large_lineheight = F) 
{
  a <- theme_bw() + theme(text = element_text(family = base_family, 
                                              colour = base_color, size = base_size), 
                          line = element_line(colour = base_color, size = 0.2), 
                          legend.background = element_blank(), 
                          legend.key = element_blank(), 
                          panel.background = element_blank(), 
                          panel.border = element_rect(fill = NA, 
                                                      colour = base_color, size = 0.2), 
                          strip.background = element_blank(), 
                          axis.line = element_blank(), 
                          panel.grid.minor = element_blank(), 
                          axis.ticks = element_blank(), 
                          plot.background = element_rect(fill = primary_color), 
                          axis.text = element_text(family = base_family, 
                                                   colour = base_color, 
                                                   size = base_size), 
                          plot.title = element_text(family = title_family, face = "bold",
                                                    colour = accent_color, 
                                                    size = base_size * mult4), 
                          axis.title = element_text(family = axis_family, 
                                                    colour = accent_color, 
                                                    size = base_size * mult2), 
                          strip.text = element_text(family = axis_family, 
                                                    colour = accent_color, 
                                                    size = base_size * mult2), 
                          legend.title = element_text(family = base_family, 
                                                      colour = base_color, 
                                                      size = base_size * mult2), 
                          legend.text = element_text(family = axis_family, 
                                                     colour = accent_color, 
                                                     size = base_size * mult1))
  if (!gridlines) {
    a <- a + theme(panel.grid = element_blank())
  }
  if (!facet_outlines) {
    a <- a + theme(panel.border = element_blank())
  }
  if (large_lineheight) {
    a <- a + theme(plot.subtitle = element_text(family = subtitle_family, face = "italic",
                                                colour = accent_color, size = base_size * mult3, 
                                                lineheight = 1))
  }
  else {
    a <- a + theme(plot.subtitle = element_text(family = subtitle_family, face = "italic",
                                                colour = accent_color, size = base_size * mult3))
  }
  return(a)
}
