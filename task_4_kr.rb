# Бережний Дмитро КС31
def generate_password(length)
  uppercase_chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  lowercase_chars = 'abcdefghijklmnopqrstuvwxyz'
  digit_chars = '0123456789'
  special_chars = '!@#$%^&*()'

  all_chars = [uppercase_chars, lowercase_chars, digit_chars, special_chars]
  password = ''

  length.times do
    index_of_type = rand(all_chars.length)
    chosen_chars = all_chars[index_of_type]
    index_of_char = rand(chosen_chars.length)
    password << chosen_chars[index_of_char]
  end

  password
end

length = 0
if ARGV.empty?
  puts "\nSince no value is specified in ARGV, here is the default operation of the program.\n"
  puts 'Enter the password length:'
  length = gets.chomp.to_i
else
  if ARGV.length == 1
    length = ARGV[0].to_s.strip.to_i
  else
    puts "Not correct value was passed"
    return
  end
end

if length <= 0 || length >= 10000
  puts 'Invalid password length'
else
  password = generate_password(length)
  puts "Generated password: #{password}"
end