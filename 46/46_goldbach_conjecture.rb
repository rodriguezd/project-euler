# It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.

# 9 = 7 + 2×1^2
# 15 = 7 + 2×2^2
# 21 = 3 + 2×3^2
# 25 = 7 + 2×3^2
# 27 = 19 + 2×2^2
# 33 = 31 + 2×1^2

# It turns out that the conjecture was false.

# What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

require 'Prime'

check_odd = 9
comp_found = false

while comp_found == false
  check_sum = 0
  num_to_square = 1
  smallest_composite = 0
  sum_found = false
  Prime.each(check_odd) do |prime|
    until check_sum >= check_odd

      check_sum = prime + 2 * num_to_square**2
      if check_sum == check_odd
        sum_found = true
      end
      num_to_square += 1

    end
    num_to_square = 1
    check_sum = 0
  end
  if sum_found == false && !Prime.prime?(check_odd)
      smallest_composite = check_odd
      comp_found = true
  end
  check_odd += 2
end

puts smallest_composite