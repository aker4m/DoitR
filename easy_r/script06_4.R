exam %>% arrange(math)
exam %>% arrange(desc(math))
exam %>% arrange(class, math)

#Exercise
mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
mpg_audi <- mpg %>% filter(manufacturer == "audi")
mpg_audi %>% arrange(desc(mpg_audi$cty)) %>% head(5)
