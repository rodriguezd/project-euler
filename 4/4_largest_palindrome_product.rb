largest_palindrome = 0
(100..999).each do |first_num|
  (100..999).each do |second_num|
    product = first_num * second_num
    if product.to_s.reverse == product.to_s && product > largest_palindrome
      largest_palindrome = product
    end
  end
end
puts largest_palindrome