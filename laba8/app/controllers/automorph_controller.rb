class AutomorphController < ApplicationController
    def input; end

    def is_number? string
        true if Float(string) rescue false 
    end
     
   def a_number(i)
       tmp = i ** 2
       
       true if tmp.to_s.chars.last(i.digits.count).join.to_i == i rescue false 
end
     def output
        b = params[:n]
        @res = [] # Массив автоморфных 
        +чисел и их квадратов
         @error = ''
        if not is_number?(b) then
             @error = 'Ошибка'
            return
        end
        b = b.to_i
        if (b > 100) or (b < 0) then # Диапазон 100<b<0
             @error = 'Ошибка'
            return
        end
        (1..b+1).each do |x|
            if a_number(x) # Если число автоморфно, то добавляем X
                @res << [x, x*x]
        end
    end

    end
    
end
