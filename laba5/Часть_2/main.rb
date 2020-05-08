require_relative 'logic'
require_relative 'test'

puts 'Введите строки, знак # значит выход'
replay = gets.chomp
array =[]
while replay != '#'

  array.insert(array.length, replay)
  replay = gets.chomp
end

str = Strings.new(array)

str.change_line

puts 'Старые строки'
str.print_old

puts 'Новые строки'
str.print_new