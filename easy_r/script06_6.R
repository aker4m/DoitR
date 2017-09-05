exam %>%
  summarise(mean_math = mean(math))
exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math))
exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math), 
            sum_math = sum(math), 
            median_math = median(math),
            n = n())
mpg %>%
  group_by(manufacturer, drv) %>%
  summarise(mean_cty = mean(cty)) %>%
  head(10)
