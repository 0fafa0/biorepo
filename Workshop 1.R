# BIO319 Workshop 1 Script
# Fafa Adorkor
# 23/01/2024

1+3
6*24
16385534636*46854764
64476+6548568

x <- 10
y <- 20
x*y
class(x)

a <- TRUE
b <- FALSE

1 < 2
1 > 2

1 < 2 & 1 > 0

1 < 2 | 1 > 0

#Q1
7 >= 6

#Q2
x <- 12 / 3 > 3 & 5 ^ 2 < 25

x

#Q3
y <- 12 / 3 > 3 | 5 ^ 2 < 25 | 1 == 2

y

#Q4
z <- FALSE

z == TRUE

#Q5
c <- 'the cake'
c

l <- 'a lie'
l

c==l

#Q6
fn <- 'fafa'

ln <- 'adorkor'

nchar(fn) # or nchar ('Fafa')

nchar(ln)

nchar(fn) >= 6

#Q7

a <- nchar(fn) > 6 
b <- nchar(fn) != nchar("James") 
c <- nchar(fn) != nchar("Janelle")
d <- nchar(fn) != nchar("Jamil")
e <- nchar(fn) != nchar("Jessica")

a
b
c
d
e

a & b | c | d | e

# or nchar('Joe') < 6 & 'Joe' != 'James' & 'Joe' != 'Jamil' & 'Joe' != 'Jessica'

fn == "Janelle"

rep(x = c('I', 'will', 'not', 'tell', 'lies'), times = 100)

# 100 'elements' long so 'times = 20'

rep(x = c('a','b','c'), each = 5)

# 'x =' not needed

#5.1
seq(from = 0, to = 15, by = 0.1)

1:20

x <- c('a', 'b','c', 'd', 'e', 'f', 'g', 'h')

x[3]

x[3:5]

#5.2
x[seq(from = 1, to = 5, by = 2)]

x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1)
x > 5
y <- x[x > 5]
print(y)

#5.3
x <- 2:15
x
y <- x[x <= 7]
print(y)

x %% 3 == 0

z <- x[x %% 3 == 0]
print(z)

#5.4
mat1.data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
mat1 <- matrix(mat1.data,
               nrow = 3,
               ncol = 3,
               byrow = TRUE)
mat1

mat1 <- matrix(mat1.data,
               nrow = 3,
               ncol = 3,
               byrow = FALSE)
# numbers go down the columns rather than across the row

mat2.data <- c('a','b','c','d','e','f','g','h','i','j','k','l')
mat2 <- matrix(mat2.data,
               nrow = 3,
               ncol = 4,
               byrow = FALSE)
mat2

mat2[1,3]
mat2[,2]
mat2[2,]

mat2[3,4]
mat2[2:3,1]
mat2[2:3,]

#6.1
read.csv("NYTBestsellers.csv")
nyt <- read.csv("NYTBestsellers.csv")
nyt
str(nyt)

nyt[1:3, 2:5]
nyt[3,]
nyt[1:5, 'title']

#6.2
hist(nyt$total_weeks)
nyt$title[1:5]

nyt$personal_rating <- rep('brilliant', times = nrow(nyt))

nyt$number_of_pages <- rep(c(100,200,300,400,500), each = 20)

rep(seq(100,500, by = 100), each = 20)

nyt$number_of_pages <- rep(seq(100,500, by = 100), each = 20)

#Q8
w <- 'melanogaster'
x <- 1:12
y <- FALSE
z <- x + 1

class(z)

#Q9
vec <- seq( 2, 100, by = 2)
vec

#Q10
vec <- seq( 1001, 1500, by = 2)
vec <- vec[vec %% 7 == 0]
vec

#Q11
best10 <- nyt$title[nyt$total_weeks >= 10]
best10

#Q12
shortdf <- nyt[nyt$total_weeks >= 10 & nchar(nyt$title) < 15, ]
shortdf

#Q13
shortdf$long10 <- 'yes'
shortdf$long10[nchar(shortdf$title) != 10] <- 'no'
shortdf

#Q14
finaldf <- shortdf[ , c('title', 'author', 'year', 'long10')]
finaldf
