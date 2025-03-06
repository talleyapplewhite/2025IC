
library(ggplot2)
library(showtext)

# Enable Google Fonts
showtext_auto()
font_add_google("Roboto", "roboto")

my_sd322_theme <- function() {
  theme_minimal(base_family = "roboto") + 
    theme(
      plot.title = element_text(size = 40, face = "bold", hjust = 0.5),  # Bold centered title
      plot.subtitle = element_text(size = 15, face = "plain", hjust = 0.5),  # Subtitle
      plot.caption = element_text(size = 10, face = "italic", color = "gray"),
      
      axis.title.x = element_text(size = 30, margin = margin(t = 10)),  # X-axis title
      axis.title.y = element_text(size = 30, margin = margin(r = 10)),  # Y-axis title
      axis.text = element_text(size = 20),  # Axis labels
      
      legend.position = "top",  # Custom legend placement
      legend.title = element_text(size = 30, face = "bold"),
      legend.text = element_text(size = 30),
      legend.background = element_blank(),  # Transparent background
      legend.key = element_blank(),  # Remove legend key boxes
      
      panel.grid.major.x = element_blank(),  # Remove vertical gridlines
      panel.grid.major.y = element_line(color = "grey80"),  # Keep horizontal gridlines
      panel.grid.minor = element_blank(),  # Remove minor gridlines
      plot.background = element_rect(fill = "white", color = NA)  # White background
    )
}