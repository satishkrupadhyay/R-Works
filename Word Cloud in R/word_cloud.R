#Install library
#install.packages("tm")
#install.packages("wordcloud")
#install.packages("SnowballC")

#Include library in current session
#library(tm)
#library(wordcloud)
#library(SnowballC)

#Load text file or complete folder
lords <- Corpus(DirSource("E:\\R_Program/word cloud/file/"))

#To check files are loaded or not
#inspect(lords)

#Removing white space.
lords <- tm_map(lords, stripWhitespace)
#Converting to lower
lords <- tm_map(lords, tolower)
#To remove word
lords <- tm_map(lords, removeWords,stopwords("english"))
#For stem document
lords <- tm_map(lords, stemDocument)
#To convert in plain text document
lords <- tm_map(lords, PlainTextDocument)

#Actual word cloud implimentation
wordcloud(lords, scale = c(2,0.5), max.words = 1000, random.order = FALSE, rot.per = 0.55, use.r.layout = FALSE, colors = brewer.pal(8,"Dark2"))
