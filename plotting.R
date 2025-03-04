library(ggplot2)
gapminder <- read.csv("data/gapminder_data.csv")

ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp )) + geom_point()

ggplot(data = gapminder, 
       mapping = aes(x = year, y = lifeExp, group = country)) + 
       geom_line(mapping = aes(color = continent)) +
       geom_point()

my_plot <- ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, color = continent)) +
       geom_point(alpha = 0.5, size = 3, shape = "triangle") +
       scale_x_log10() +
       geom_smooth(method = "lm")
ggsave(filename = "results/my_plot.png", my_plot, width = 12, height = 10, units = "cm", dpi = 300)

# Multi panel data
americas <- gapminder[gapminder$continent == "Americas",]
panelplot <- ggplot(americas, mapping = aes(x=year, y=lifeExp, color = continent)) + 
  geom_line() + 
  facet_wrap(~country) +
  theme(axis.text.x = element_text(angle = 45) ) +
  labs(title = "Life Expectancy", color = "Continent")


ggsave(filename = "results/panelplot.pdf", panelplot, width = 12, height = 10, units = "cm", dpi = 300)

temperature_f <- 32

