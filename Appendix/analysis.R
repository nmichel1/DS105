library(readr)
library(ggplot2)
form <- read_csv("Data/form.csv")
View(form)

ggplot(form) +
  aes(
    x = `Median Household Income`,
    y = Biden_percent,
    colour = state,
    size = `Percentage of White`
  ) +
  geom_point(shape = "triangle") +
  scale_color_hue(direction = 1) +
  labs(
    y = "Percentage of Votes for Biden",
    title = "Effect of White Voters and Household Income",
    color = "State"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 20L,
                              hjust = 0.5),
    axis.title.y = element_text(size = 18L),
    axis.title.x = element_text(size = 18L)) +
  guides(size = guide_legend(title = "Percentage of White Individuals in a given State"))