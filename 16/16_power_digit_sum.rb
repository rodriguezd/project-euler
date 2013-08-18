number = 2**1000
digit_array = number.to_s.split('').collect{|digit| digit.to_i}
sum = digit_array.reduce(:+)
puts sum
