ggplot(data = mpg, aes(x = drv, y = hwy))+
  geom_boxplot()

#Exercise

df_mpg <- mpg %>%
  filter(class %in% c("compact", "subcompact", "suv"))
ggplot(data = df_mpg, aes(x = class, y = cty))+
  geom_boxplot()
