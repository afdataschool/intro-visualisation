library(tidyverse)
gapminder <- read_csv("data/gapminder-FiveYearData.csv")
gapminder

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))

ggplot(data = gapminder, 
       aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp)) +
  geom_point()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp)) +
  geom_boxplot()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, group = year)) +
  geom_boxplot()

ggplot(data = gapminder,
       aes(x = as.factor(year), y = lifeExp)) +
  geom_boxplot()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, colour = continent)) +
  geom_point()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp)) +
  geom_line()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, group = continent)) +
  geom_line()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, group = country)) +
  geom_line()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country, colour = continent)) +
  geom_line()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country, colour = continent)) +
  geom_line() +
  geom_point()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_line(aes(colour = continent)) +
  geom_point()

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_point() +
  geom_line(aes(colour = continent))

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country)) +
  #geom_point(colour = "blue") + #maps to the colour blue
  #geom_point(aes(colour = "this is not a colour")) + #maps to a variable called "this is not a colour"
  #geom_point(colour = "this is not a colour") + #tries to map to a colour "this is not a colour"
  geom_line(aes(colour = continent))


ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_point() +
  geom_line(aes(colour = continent))

#map point size to another variable in the data
#map point size to a value that's not in your data

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_line(aes(colour = continent)) +
  geom_point(aes(size = pop))

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country,
           size = pop)) +
  geom_line(aes(colour = continent)) +
  geom_point()


ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_line(aes(colour = continent)) +
  geom_point(size = 0.01)

ggplot(data = gapminder, 
       aes(x = gdpPercap, y = lifeExp,
           colour = continent)) +
  geom_point() +
  scale_x_log10()

ggplot(data = gapminder, 
       aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 5)

ggplot(data = gapminder, 
       aes(x = gdpPercap, y = lifeExp)) +
  geom_point(colour = "red", size = 3) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 5)

ggplot(data = gapminder, 
       aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(colour = "red"), size = 3) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 5)

ggplot(data = gapminder, 
       aes(x = gdpPercap, y = lifeExp)) +
  geom_point(size = 1) +
  scale_x_log10() +
  geom_smooth(aes(colour = continent), method = "lm", size = 1)

ggplot(data = gapminder,
       aes(x = year, y = lifeExp, 
           colour = continent)) +
  geom_line() +
  facet_wrap(~ country)

#Subset the data to only have three countries
#Make a faceted plot

gapminder_selection <- gapminder %>% 
  filter(country %in% c("Chile", "Australia", "Norway"))

ggplot(data = gapminder_selection,
       aes(x = year, y = lifeExp, 
           colour = continent)) +
  geom_line() +
  facet_wrap(~ country)

gapminder %>% 
  filter(country %in% c("Chile", "Australia", "Norway")) %>% 
  ggplot(aes(x = year, y = lifeExp, 
           colour = continent)) +
  geom_line() +
  facet_wrap(~ country) +
  labs(
    x = "Year",
    y = "Life Expectancy",
    title = "Figure 1",
    colour = "Continent"
  ) +
  theme(
    panel.grid = element_blank(),
    axis.text.x = element_text(angle = 90),
    panel.background = element_rect(fill = "white",
                                    colour = "black")
    )

