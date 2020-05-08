require_relative 'logic'
require_relative 'test'

puts 'enter a'
a = gets.to_f
puts 'enter b'
b = gets.to_f

puts calc(a,b)