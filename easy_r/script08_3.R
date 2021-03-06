library(dplyr)
mpg<- as.data.frame(ggplot2::mpg)
df_mpg <- mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))
df_mpg
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy))+
  geom_col()
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy))+
  geom_col()
ggplot(data = mpg, aes(x = drv))+
  geom_bar()
ggplot(data = mpg, aes(x = hwy))+
  geom_bar()

#Exercise

df_mpg <- mpg %>%
  filter(class == "suv") %>%
  group_by(manufacturer) %>%
  summarise(mean_cty = mean(cty)) %>%
  arrange(desc(mean_cty))
ggplot(data = df_mpg, aes(x = reorder(manufacturer, -mean_cty), y = mean_cty))+
  geom_col()
ggplot(data = mpg, aes(x = class))+
  geom_bar()
