# Бережний Дмитро КС31
def sort_numbers(numbers, order)
  case order
  when 1
    sorted_numbers = numbers.sort
  when 2
    sorted_numbers = numbers.sort.reverse
  else
    puts "Incorrect selection!"
    return
  end
  sorted_numbers
end

def str_to_ints(input)
  input.split.map { |num|
    begin
      Integer(num)
    rescue ArgumentError
      puts "Not correct arguments!"
      return
    end
  }
end

if ARGV.empty?
  puts "\nSince no value is specified in ARGV, here is the default operation of the program.\n"
  puts "Enter numbers separated by spaces:"

  input = gets.chomp
  numbers = str_to_ints(input)

  puts "Select the sort order"
  puts "1 - Ascending"
  puts "2 - Descending"
  order = gets.chomp.to_i
else
  if ARGV.length == 2
    numbers = str_to_ints(ARGV[0].to_s.chomp)
    order = ARGV[1].to_s.chomp.to_i
  else
    puts "Not correct value was passed"
  end
end

sorted_numbers = sort_numbers(numbers, order)
puts "Sorted numbers: #{sorted_numbers}"