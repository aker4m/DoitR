english<-c(90, 80, 60, 70)
english
math<-c(50, 60, 100, 20)
math
df_midterm<-data.frame(english, math)
df_midterm
class<-c(1, 1, 2, 2)
class
df_midterm<-data.frame(english, math, class)
df_midterm
mean(df_midterm$english)
mean(df_midterm$math)
df_midterm<-data.frame(english=c(90, 80, 60, 70),
                       math=c(50, 60, 100, 20),
                       class=c(1, 1, 2, 2))
df_midterm

df_products <- data.frame(product=c("apple", "strawberry", "watermelone"),
                          price=c(1800, 1500, 3000),
                          sales=c(24, 38, 13))
df_products
price_mean<-mean(df_products$price)
price_mean
sales_mean<-mean(df_products$sales)
sales_mean
