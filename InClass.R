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

