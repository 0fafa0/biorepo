#2.1
sentence <- c('By','the','time','they', 'got', 'back,', 'the', 'lights', 'were', 'all', 'out', 'and', 'everybody', 'was', 'asleep.', 'Everybody,', 'that', 'is,', 'except', 'for', 'Guih', 'Kyom', 'the', 'dung', 'beetle.', 'He', 'was', 'wide', 'awake', 'and', 'on', 'duty,', 'lying', 'on', 'his', 'back', 'with', 'his', 'legs', 'in', 'the', 'air', 'to', 'save', 'the', 'world', 'in', 'case', 'the', 'heavens', 'fell.')
sentence

# search for 'the' in sentence
grep_out <- grep(pattern = 'the', x = sentence)

# find positions of pattern 'the'
grep_out

# words at each position
sentence[grep_out]

# anchor to only return word 'the'
grep_out <- grep(pattern = '^the$', x = sentence)

grep_out

sentence[grep_out]

grep_at <- grep(pattern = 'at', x = sentence)

grep_at <- grep(pattern = '^at$', x = sentence)

grep_at

#2.2
# search for capital letters
grep_uc <- grep(pattern = '[A-Z]', x = sentence)
grep_uc
sentence[grep_uc]

# search for lowercase letters
grep_lc <- grep(pattern = '[a-z]', x = sentence)
grep_lc
sentence[grep_lc]

# search for words with characters between 'a' and 'e'
grep_ae <- grep(pattern = 'a.e', x = sentence)
grep_ae
sentence[grep_ae]

# search for words with characters between 'b' and 'c'
grep_bc <- grep(pattern = 'b.c', x = sentence)
grep_bc
sentence[grep_bc]

#2.3
sentence[grep(pattern = 'e.?e', x = sentence)]
# words with two es together or one character between the es

sentence[grep(pattern = 'e.*e', x = sentence)]
# words with two es together or any any number of character between two es

sentence[grep(pattern = 'e.+e', x = sentence)]
# words with one or more characters between two es, excludes two es together

#2.4
gsub_out <- gsub(pattern = 'a.e', x = sentence, replacement = '!!!')
gsub_out
# substitutes a_e with !!! 

# substitute t with ?
gsub_t <- gsub(pattern = 't', x = sentence, replacement = '?')
gsub_t
