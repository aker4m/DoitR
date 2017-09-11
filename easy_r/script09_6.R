class(welfare$code_job)
table(welfare$code_job)
library(readxl)
list_job <- read_excel("Koweps_Codebook.xlsx", col_names=T, sheet = 2)
head(list_job)
dim(list_job)
welfare <- left_join(welfare, list_job, id="code_job")
welfare %>%
  filter(!is.na(code_job)) %>%
  select(code_job, job) %>%
  head(10)

job_income <- welfare %>%
  filter(!is.na(job) & !is.na(income)) %>%
  group_by(job) %>%
  summarise(mean_income = mean(income))
head(job_income)
top20 <- job_income %>%
  arrange(desc(mean_income)) %>%
  head(20)
top20
theme_set(theme_bw(base_family = "NanumGothic"))
ggplot(data = top20, aes(x=reorder(job, mean_income), y=mean_income))+
  geom_col() +
  coord_flip()

bottom20 <- job_income %>%
  arrange(mean_income) %>%
  head(20)
bottom20
ggplot(data = bottom20, aes(x=reorder(job, -mean_income), y = mean_income)) +
  geom_col() +
  coord_flip() +
  ylim(0, 850)
