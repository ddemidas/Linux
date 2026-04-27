#how to calculate occurrences of a given word in the log
#source https://stackoverflow.com/questions/71258529/counting-the-number-of-occurrences-of-the-word-error-and-notice-in-a-log-fil 
# -o matches only text
# -i case insensetive
grep -o -i '[error]' apache.log | wc -l
# catch the given word with explicitly square brackets
grep -oi '\[notice]' apache.log | wc -l
