outlier <- data.frame(sex = c(1, 2, 1, 3, 2, 1),
                      score = c(5, 4, 3, 4, 2, 6))
outlier
table(outlier$sex)
table(outlier$score)
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier
outlier$score <- ifelse(outlier$score > 5, NA, outlier$score)
outlier
outlier %>%
  filter(!is.na(outlier$sex) & !is.na(outlier$score)) %>%
  group_by(sex) %>%
  summarise(mean_score = mean(score))

mpg<- as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)$stats
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))
mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy, na.rm = T))

#Exercise

mpg<-as.data.frame(ggplot2::mpg)
mpg[c(10, 14, 58, 93), "drv"]<-"k"
mpg[c(29, 43, 129, 203), "cty"]<-c(3, 4, 39, 42)
mpg$drv<- ifelse(mpg$drv %in% c("4", "r", "f") , mpg$drv, NA)
table(is.na(mpg$drv))
boxplot(mpg$cty)$stats
mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)
boxplot(mpg$cty)$stats
table(is.na(mpg$cty))
mpg %>%
  filter(!is.na(mpg$drv) & !is.na(mpg$cty)) %>%
  group_by(drv) %>%
  summarise(mean_cty = mean(cty))
