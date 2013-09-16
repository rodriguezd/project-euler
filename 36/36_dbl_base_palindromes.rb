class DblBasePalindrome
  def self.binary_convert(number)
    binary = []
    remainder = number
    (0..19).to_a.reverse.each do |exponent|
      if remainder - 2**exponent >= 0
        binary << 1
        remainder -= 2**exponent
      elsif remainder != number
        binary << 0
      end
    end
    binary.join
  end

  def self.palindrome?(number)
    number.to_s == number.to_s.reverse
  end
end

if __FILE__ == $0
  sum = 0
  (1..999999).each do |number|
    if DblBasePalindrome.palindrome?(number)
      binary = DblBasePalindrome.binary_convert(number)
      if DblBasePalindrome.palindrome?(binary)
        sum += number
      end
    end
  end
  puts sum
end