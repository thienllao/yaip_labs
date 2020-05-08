
class Strings
  def initialize arr
    @array = arr
    @new_array = arr
  end

attr_reader :array, :new_array

  def change_line
    @new_array = @array.map do |lines|
      lines = lines.split(" ").map!.with_index{ |e,index|
        if index.odd?

          if e[0] == "н"
            puts "Введите новое слово"
            e = gets.chomp
          else
            e
          end
        else
          e
        end

      }
     lines.reject.with_index{|word, i|  word[0]=='л' && i.even?}
    end

  end

  def print_old
    @array.each do |elem| puts elem end
  end
  def print_new
    @new_array.each do |elem| puts elem.join(" ") end
  end
  end
