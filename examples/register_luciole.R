library(luciole)
library(ggplot2)

# Register font
register_luciole()

# use with ggplot2
ggplot() +
  aes(0, 0, label = "lisibilité") +
  geom_text(size = 20, family = "Luciole") + 
  theme_grey(base_family = "Luciole")

# use with base
plot(0, 0, col = "white")
text(
  x = 0, y = 0,
  labels = "lisibilité", 
  cex = 5,
  family = "Luciole"
)
