class Collatz

  def initialize(number)
    @sequence_num = number
    @sequence_array = []
    @sequence_array << @sequence_num
  end

  def gen_sequence
    until @sequence_num == 1
      if @sequence_num.even?
        @sequence_num = @sequence_num / 2
      else
        @sequence_num = 3*@sequence_num + 1
      end
      @sequence_array << @sequence_num
    end
    @sequence_array
  end
end

start_num = 0
max_length = 0
(2..999999).each do |num|
  result_array = Collatz.new(num).gen_sequence
  if result_array.length > max_length
    max_length = result_array.length
    start_num = num
  end
end

puts start_num
puts max_length