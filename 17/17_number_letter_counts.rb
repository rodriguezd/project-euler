# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

class LetterCounts
  def initialize
    @number_string = ''
  end

  def self.stringify_number(number)
    case
    when number == 1000 then @number_string = 'one thousand'
    when number/100 != 0 then @number_string = hundreds(number)
    when number/10 != 0 then @number_string = tens(number)
    else
      @number_string = ones(number)
    end
    @number_string
  end

  def self.hundreds(number)
    hundreds_digit = number/100
    rest_digits = number%100
    number_string = ''
    case hundreds_digit
    when 1 then number_string = 'one'
    when 2 then number_string = 'two'
    when 3 then number_string = 'three'
    when 4 then number_string = 'four'
    when 5 then number_string = 'five'
    when 6 then number_string = 'six'
    when 7 then number_string = 'seven'
    when 8 then number_string = 'eight'
    when 9 then number_string = 'nine'
    end
    number_string << ' hundred'
    if rest_digits == 0
      number_string
    elsif rest_digits >= 10
      number_string << " and #{tens(rest_digits)}"
    else
      number_string << " and #{ones(rest_digits)}"
    end
  end

  def self.tens(number)
    tens_digit = number/10
    ones_digit = number%10
    number_string = ''
    if number < 20
      case number
      when 10 then number_string = 'ten'
      when 11 then number_string = 'eleven'
      when 12 then number_string = 'twelve'
      when 13 then number_string = 'thirteen'
      when 14 then number_string = 'fourteen'
      when 15 then number_string = 'fifteen'
      when 16 then number_string = 'sixteen'
      when 17 then number_string = 'seventeen'
      when 18 then number_string = 'eighteen'
      when 19 then number_string = 'nineteen'
      end
    else
      case tens_digit
      when 2 then number_string = 'twenty'
      when 3 then number_string = 'thirty'
      when 4 then number_string = 'forty'
      when 5 then number_string = 'fifty'
      when 6 then number_string = 'sixty'
      when 7 then number_string = 'seventy'
      when 8 then number_string = 'eighty'
      when 9 then number_string = 'ninety'
      end
      if ones_digit != 0
        number_string << "-#{ones(ones_digit)}"
      end
    end
    number_string
  end

  def self.ones(number)
    number_string = ''
    case number
    when 1 then number_string = 'one'
    when 2 then number_string = 'two'
    when 3 then number_string = 'three'
    when 4 then number_string = 'four'
    when 5 then number_string = 'five'
    when 6 then number_string = 'six'
    when 7 then number_string = 'seven'
    when 8 then number_string = 'eight'
    when 9 then number_string = 'nine'
    end
  number_string
  end
end

letter_count = 0
(1..1000).each do |number|
  letter_count += LetterCounts.stringify_number(number).gsub(' ','').gsub('-','').length
end
puts letter_count
