library(agridat)

head(blackman.wheat)
as_tibble(blackman.wheat)
bw <- as_tibble(blackman.wheat)
blackman.wheat
bw

awesome_plot <- ggplot(bw, aes(nitro, yield)) +
  geom_line(aes(group = gen)) +
  geom_point() +
  facet_wrap(~loc)

ggsave("figures/awesome_plot.png", awesome_plot,
        width = 6, height = 6)
