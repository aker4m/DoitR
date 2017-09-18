install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")
Sys.setenv(JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/")
library(rJava)
library(KoNLP)
library(dplyr)
useNIADic()
#Sys.setlocale(category = "LC_CTYPE", locale = "ko_KR.UTF-8")
txt <- readLines("hiphop.txt")
head(txt)
install.packages("stringr")
library(stringr)
txt <- str_replace_all(txt, "\\W", " ")
head(txt)

extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")

nouns <- extractNoun(txt)
wordcount <- table(unlist(nouns))
df_word <- as.data.frame(wordcount, stringsAsFactors = F)
df_word <- rename(df_word, word = Var1, freq = Freq)
head(df_word)
df_word <- filter(df_word, nchar(word) >=2)
top_20 <- df_word %>%
  arrange(desc(freq)) %>%
  head(20)
top_20

install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)
pal <- brewer.pal(8, "Dark2")
set.seed(1234)
wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.freq = 200,
          random.order = F, 
          rot.per = .1,
          scale = c(4, 0.3),
          colors = pal,
          family="AppleGothic")

pal <- brewer.pal(9, "Blues")[5:9]
set.seed(1234)
wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words = 200,
          random.order = F, 
          rot.per = .1,
          scale = c(4, 0.3),
          colors = pal,
          family="AppleGothic")