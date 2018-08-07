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
