# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?

triangle_words = []
word_value = 0
content = File.open('words.txt').read.split('","')

content.each do |word|
  word_value = 0
  word.sub!('"', '')
  word.each_byte {|byte| word_value += byte - 64}
  n = (-1 + Math.sqrt(1 - 4*(- 2 * word_value))) / 2
  triangle_words << word if n == n.round
end
puts triangle_words.count