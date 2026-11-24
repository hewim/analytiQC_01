library(tidyverse)

plot_lj <- function(
    values,
    target,
    sd,
    title = "Levey-Jennings-Diagramm",
    yAchse = "Messwert"
) {
  
  df <- data.frame(
    Day = seq_along(values),
    Value = values
  )
  
  ggplot(df, aes(x = Day, y = Value)) +
    
  
    
    # +3 SD Bereich
    annotate(
      "rect",
      xmin = -Inf,
      xmax = Inf,
      ymin = target + 3*sd,
      ymax = Inf,
      fill = "#FDE0DD",
      alpha = 0.5
    ) +
    
    # -3 SD Bereich
    annotate(
      "rect",
      xmin = -Inf,
      xmax = Inf,
      ymin = -Inf,
      ymax = target - 3*sd,
      fill = "#FDE0DD",
      alpha = 0.5
    ) +

    # +2 SD Bereich
    annotate(
      "rect",
      xmin = -Inf,
      xmax = Inf,
      ymin = target + 1*sd,
      ymax = target + 3*sd,
      fill = "#FEE090",
      alpha = 0.5
    ) +
    
    # -2 SD Bereich
    annotate(
      "rect",
      xmin = -Inf,
      xmax = Inf,
      ymin = target - 3*sd,
      ymax = target - 1*sd,
      fill = "#FEE090",
      alpha = 0.5
    ) +
    
    # ±1 SD Bereich
    annotate(
      "rect",
      xmin = -Inf,
      xmax = Inf,
      ymin = target - sd,
      ymax = target + sd,
      fill = "#E5F5E0",
      alpha = 0.5
    ) +
    
    
    # Messwerte
    geom_line(colour = "darkgray") +
    geom_point(shape = 21, size = 3, colour = "darkgray", fill = "white") +
    
    # Mittelwert
    geom_hline(
      yintercept = target,
      linewidth = 0.75,
      colour = "darkgray"
    ) +
    
    # ±1 SD
    geom_hline(
      yintercept = c(
        target + sd,
        target - sd
      ),
      colour = "darkgreen",
      linetype = "dashed",
      linewidth = 0.5
    ) +
    
    # ±2 SD
    geom_hline(
      yintercept = c(
        target + 2 * sd,
        target - 2 * sd
      ),
      colour = "orange",
      linetype = "dashed",
      linewidth = 0.5
    ) +
    
    # ±3 SD
    geom_hline(
      yintercept = c(
        target + 3 * sd,
        target - 3 * sd
      ),
      colour = "red",
      linewidth = 0.5,
      linetype = "dashed"
    ) +
  
    labs(
      title = title,
      x = "Serie/Tag",
      y = yAchse
    ) +
    
    scale_x_continuous(breaks = c(1,seq(0, 31, by = 5)),
                       minor_breaks = seq(1, 31, by = 1)
    ) +
    
    theme_minimal(base_size = 14) +
    
    theme(
      panel.grid.major = element_line(color = 2),
      panel.grid.minor = element_line(color = "darkgray"),
      panel.border = element_rect(color = "gray20", linewidth = 1),
      plot.margin = margin(t = 2, r = 1, b = 2, l = 3, unit = "cm")
      )
  
}