def fibonacci(sequence, index)
  sequence ||= [0, 1, 1]
  (sequence.length..index).each do |i|
    sequence[i] = sequence[i - 2] + sequence[i - 1]
  end
  sequence
end

def find_num
  found = false
  n = 2750
  while !found
    puts n
    sequence = fibonacci(sequence, n)
    left_end = sequence[n].to_s.split('').first(9).sort
    right_end = sequence[n].to_s.split('').last(9).sort
    if left_end == ['1', '2', '3', '4', '5', '6', '7', '8', '9'] &&
        right_end == ['1', '2', '3', '4', '5', '6', '7', '8', '9']
      puts "k = " + n.to_s
      exit
    end
    n += 1
  end
end

