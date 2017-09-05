exam <- read.csv("csv_exam.csv")
library(dplyr)
exam %>% select(math)
exam %>% select(english)
exam %>% select(class, math, english)
exam %>% select(-math)
exam %>% select(-math, -english)
exam %>% filter(class == 1) %>% select(english)
exam %>%
  filter(class == 1) %>%
  select(english)
exam %>%
  select(id, math) %>%
  head
exam %>%
  select(id, math) %>%
  head(10)

#Exercise
mpg <- as.data.frame(ggplot2::mpg)
mpg_new <- mpg %>% select(class, cty)
head(mpg_new)
mpg_suv <- mpg_new %>% filter(class == "suv")
mpg_compact <- mpg_new %>% filter(class == "compact")
mean(mpg_suv$cty)
mean(mpg_compact$cty)

