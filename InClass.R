print('\"')

#1
cat("\"")
cat("ab\ncd")
cat("a\tb\n\tb")


#2.print :-\, using another \
cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")


#3
library(stringr)
?str_locate
?str_sub

#4
str_locate("great", "a")
list=c("great", "fantastic", "super")
str_locate(string=list, pattern="a")  #locate the first occurance
occurance<-str_locate_all(string=list, pattern="a")
occurance[[2]][2, 1]

#5
str_sub(string="testing", start=1, end=3)
str_sub("testing", start=4,
        end=str_length("testing"))
str_sub("testing", start=1, end=4)


#6
input<-c("abc", "defg")
str_sub(input, c(2, 3)) ##start number vector

email<-readRDS("email.rds")
cat(email[8])


##7 Use str_locate() to identify the locaiton of the blank line

str_locate(string=email[1], pattern="\n\n")

#
metadata1<-str_sub(string=email[1], start=1, end=842)
body1<-str_sub(string=email[1], start=846)
cat(metadata1)
cat(body1)

str_split(string=metadata1, pattern="\n")

loc<-str_locate(string=email, pattern="\n\n")

metadata<-str_sub(string=email, start=rep(1, length(email), end=loc[,1]) )
body<-str_sub(string=email, start=loc[,2])



