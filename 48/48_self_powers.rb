# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.

# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

base = 1
sum = 0

while base <= 1000
  sum += base**base
  base += 1
end
puts sum.to_s.split('').last(10).join