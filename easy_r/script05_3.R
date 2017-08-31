df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))
df
df$var_sum <- df$var1 + df$var2
df
df$var_mean <- (df$var1 + df$var2)/2
df
mpg<-as.data.frame(ggplot2::mpg)
mpg$total <- (mpg$hwy + mpg$cty)/2
head(mpg)
mean(mpg$total)
summary(mpg$total)
hist(mpg$total)
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
head(mpg, 20)
table(mpg$test)
library(ggplot2)
qplot(mpg$test)
mpg$grade <- ifelse(mpg$total >=30, "A",
                    ifelse(mpg$total >=20, "B", "C"))
head(mpg, 20)
table(mpg$grade)
qplot(mpg$grade)
mpg$grade2 <- ifelse(mpg$total >=30, "A",
                     ifelse(mpg$total >=25, "B",
                            ifelse(mpg$total >=20, "C", "D")))
head(mpg$grade2, 20)
table(mpg$grade2)
qplot(mpg$grade2)

#Exercise
midwest <- as.data.frame(ggplot2::midwest)
midwest_new <- midwest
midwest_new <- rename(midwest_new, total = poptotal, asian = popasian)
head(midwest_new)
midwest_new$rate <- (midwest_new$asian/midwest_new$total)
table(midwest_new$rate)
hist(midwest_new$rate)
summary(midwest_new$rate)
midwest_new$size <- ifelse(midwest_new$rate >= 0.004872, "large", "small")
table(midwest_new$rate)
qplot(midwest_new$rate)
