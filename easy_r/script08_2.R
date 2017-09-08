library(ggplot2)
ggplot(data = mpg, aes(x = displ, y= hwy))
ggplot(data = mpg, aes(x = displ, y = hwy))+geom_point()
ggplot(data = mpg, aes(x = displ, y = hwy))+geom_point()+xlim(3, 6)
ggplot(data = mpg, aes(x = displ, y= hwy)) +
  geom_point() +
  xlim(3, 6) +
  ylim(10, 30)

#Exercise

ggplot(data = mpg, aes(x = cty, y = hwy)) +
  geom_point()

ggplot(data = midwest, aes(x = poptotal, y = popasian))+
  geom_point()+
  xlim(0, 5e+05) +
  ylim(0, 1e+04)
