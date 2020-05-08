
require_relative "logic"
require_relative "test"

puts  'Введите точность'

a = gets.to_f
puts "y = #{func(a, &method(:function))[0]}"
puts "Количество = #{func(a, &method(:function))[1]}"

