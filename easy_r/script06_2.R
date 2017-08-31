library(dplyr)
exam <- read.csv("csv_exam.csv")
exam
exam %>% filter(class == 1)
exam %>% filter(class == 2)
exam %>% filter(class != 1)
exam %>% filter(class != 3)
exam %>% filter(math > 50)
exam %>% filter(math < 50)
exam %>% filter(english >= 80)
exam %>% filter(english <= 80)

exam %>% filter(class == 1 & math >= 50)
exam %>% filter(class == 2 & english >= 80)
exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(english < 90 | science < 50)
exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1, 3, 5))
class1 <-exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)
mean(class1$math)
mean(class2$math)

#Exercise1
mpg <- as.data.frame(ggplot2::mpg)
mpg_new <- mpg
displ4 <- mpg_new %>% filter(mpg_new$displ <= 4)
displ5 <- mpg_new %>% filter(mpg_new$displ >= 5)
mean(displ4$hwy)
mean(displ5$hwy)

#Exercise2
audi <- mpg_new %>% filter(mpg_new$manufacturer == "audi")
toyota <- mpg_new %>% filter(mpg_new$manufacturer == "toyota")
mean(audi$cty)
mean(toyota$cty)
hwy_test <- mpg_new %>% filter(mpg_new$manufacture %in% c("chevrolet", "ford", "honda"))
mean(hwy_test$hwy)
