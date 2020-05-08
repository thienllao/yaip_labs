require_relative 'logic'
require_relative 'test'
puts 'Введите 40 чисел'
f = FilesClass.new('F.txt', gets.to_s)
f.creat_p_file
puts 'Преобразованные числа из файла P'
puts f.read_p_file