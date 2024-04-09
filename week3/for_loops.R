#2.1
for(i in 1:10){print(i)} # create a for loop that runs 5 times (1 to 5), each time the for loop runs, print the value of i

#2.2
x <- 0          # make a new scalar called x with a value of 0

for(i in 1:10){ # create a for loop that runs 10 times (1 to 10)
  x <- x + i}   # within our for loop we are adding the value of i to the value of x (1+2+.....+9+10)

print(x)        # print x

x <- 0
for(i in 1:10){x <- x + i  
print(x) # add command into loop
}


x <- 0
for(i in 1:7){x <- x + i}
print(i)
print (x)

#2.3
for(i in 10:20) {
  print(i ^ 2)
}

#2.4
shrek_quote <- c('What', 'are', 'you', 'doing', 'in', 'my', 'swamp')
for(word in shrek_quote){
  print(toupper(word))  
}

for(donkey in 1:length(shrek_quote)){
  print(toupper(shrek_quote[donkey]))  
}

#3
output <- vector() # creates an empty vector that we can fill with values
input <- c('red', 'yellow', 'green', 'blue', 'purple')
for(i in 1:length(input)){
  output[i] <- nchar(input[i])
}
print(output)

c('buzzword', 'crossword', 'broadsword', 'foreword', 'word')

words <- c('buzz', 'cross', 'broads', 'fore', '')
wordwords <- vector()
for(i in 1:length(words)){
  wordwords[i] <- paste(words[i], 'word', sep = '')}
  
words <- c('buzz', 'cross', 'broads', 'fore', '')
wordwords <- vector()
wordwords <- paste(words, 'word', sep = '')
wordwords

#4.1
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i > 5){
    print(i)}}

numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))}}

#4.2
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else {
    print(paste(i, ' is not less than five or is not an integer (or both!).', sep = ''))}}

#4.3
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else if(i < 5 & i %% 1 != 0){
    print(paste(i, ' is not an integer.', sep = ''))
  } else if(i >= 5 & i %% 1 == 0){
    print(paste(i, ' is not less than five.', sep = ''))
  } else {
    print(paste(i, ' is not less than five and is not an integer.', sep = ''))
  }
}