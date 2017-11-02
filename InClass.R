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

metadata<-str_sub(string=email, start=1, end=loc[,1] )
body<-str_sub(string=email, start=loc[,2])

## handout 2
#1.
fruit<-c("apple", "banana", "pear", "pinapple")
str_detect(fruit, "a")
str_detect(fruit, "^a") # begines with
str_detect(fruit, "a$")  # $ends with
str_detect(fruit, "[aeiou]")
str_detect(fruit, "[a-d]")

##detect a string that starts with "a" and ends with "e"
str_detect(fruit, "^a[a-z]*e$")


##4
phone=c("212 740 4826", "213-740-4826","222.222.2222", "(213) 740-4826", "121-323-4567356")
parser="[(]?[0-9]{3}[)]?[ -.][0-9]{3}[ -.][0-9]{4}\\b"
str_detect(phone, parser)

cat(body[19])

str_extract(string=body, pattern=parser)

##6
parser_zip<-"[1-9]{5}(-[0-9]{4})?"
str_extract(string=body, pattern=parser_zip)
