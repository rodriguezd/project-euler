file = File.open('names.txt')
content = file.read
file.close
name_array = content.split("\",\"").sort
scores_total = 0
name_array.each_with_index do |name, i|
  alpha_value = 0
  name.downcase!
  name.each_char do |letter|
    case letter
      when 'a' then alpha_value += 1
      when 'b' then alpha_value += 2
      when 'c' then alpha_value += 3
      when 'd' then alpha_value += 4
      when 'e' then alpha_value += 5
      when 'f' then alpha_value += 6
      when 'g' then alpha_value += 7
      when 'h' then alpha_value += 8
      when 'i' then alpha_value += 9
      when 'j' then alpha_value += 10
      when 'k' then alpha_value += 11
      when 'l' then alpha_value += 12
      when 'm' then alpha_value += 13
      when 'n' then alpha_value += 14
      when 'o' then alpha_value += 15
      when 'p' then alpha_value += 16
      when 'q' then alpha_value += 17
      when 'r' then alpha_value += 18
      when 's' then alpha_value += 19
      when 't' then alpha_value += 20
      when 'u' then alpha_value += 21
      when 'v' then alpha_value += 22
      when 'w' then alpha_value += 23
      when 'x' then alpha_value += 24
      when 'y' then alpha_value += 25
      when 'z' then alpha_value += 26
      else alpha_value += 0
    end
  end
  score = alpha_value * (i + 1)
  scores_total += score
end
puts scores_total