
require_relative 'logic'
require_relative 'test'

puts  'Введите точность'
ksi = gets.to_f
func = Func.new(ksi)
puts "y=#{func.func}"
puts "Количество итераций:#{func.count}"
