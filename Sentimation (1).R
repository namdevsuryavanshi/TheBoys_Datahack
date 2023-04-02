### Sentimetion###


install.packages("sentimentr")
library("sentimentr")
install.packages("devtools")
library(devtools)
library(readxl)
data=read_excel('C:\\Users\\nmims.student\\Downloads\\vedio_sorted data (2).xlsx')
View(data)

#Sentimate Analysis on comments(Positive/Negative comment)

senti=sentiment_by(data$Comments)
senti$ave_sentiment
sentiment_by(data$Comments[2])
data$sentimate=senti$ave_sentiment
data$WordCount=senti$word_count
data1=data
data1
data1$like_score=scale(data1$like_score)
data1
data1$score = data1$like_score + data1$sentimate
View(data1)
data1=data1[order(data1$score,decreasing = TRUE),]
View(data1)
video=data1[1:100,]
video_top=table(vedio$channel_title)
video_top=as.data.frame(vedio_top)
video_top=video_top[order(video_top$Freq,decreasing = TRUE),]
video_top

data1_freq=as.data.frame(table(data1$channel_title))
data1_freq










