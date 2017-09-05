exam %>%
  mutate(total= math+english+science) %>% 
  head
exam %>%
  mutate(total = math+english+science, 
         mean = (math+english+science)/3) %>%
  head
exam %>%
  mutate(test = ifelse(science >=60, "pass", "fail")) %>%
  head
exam %>%
  mutate(total = math+english+science) %>%
  arrange(total) %>%
  head

#Exercise
mpg<-as.data.frame(ggplot2::mpg)
mpg_total <- mpg %>%
  mutate(total = hwy+cty)
mpg_total <- mpg_total %>%
  mutate(avg = total/2)
mpg_total %>% 
  arrange(desc(avg)) %>% 
  head(3)
mpg %>%
  mutate(total = cty+hwy,
         avg = (cty+hwy)/2) %>%
  arrange(desc(avg)) %>%
  head(3)
