class MainController < ApplicationController
    def index
    end
    
    def is_number?(str)# метод чекает, если строка в себе держит  число
      Float(str) != nil rescue false
    end
  
    def calc
      n = params[:n] # достаем  н из запроса
      bad_input = !is_number?(n)# чекаем, является ли n числом, если нет - bad_input = true, js в index.html.erb выведет сообщение об ошибке
      if bad_input # если плохой ввод, то не считаем
        numbers = nil
      else
        n = n.to_i # преобразуем в инт
        numbers = (1..n).select {|num| automorphous?(num) } # от 1 до н выбираем автоморфные числа
      end
  
      respond_to do |format| # респонд
        format.html # если запрашивают хтмл, возвращаем хтмл
        format.json do # если запрашивают джсон, возвращаем следующее:
          render json: {numbers: numbers, bad_input: bad_input}# передаем автоморфные числа и флаг неправильного ввода
        end
      end
    end
  
  private
    def automorphous?(num)
      squared = (num**2).to_s # берет квадрат числа и преобразовывает в строку
      num.to_s == squared[squared.length-num.to_s.length..-1] # берем срез строки квадрата числа длинной в исходное число, т.е. для 25 и 625 возьмется '625'[1..2]
    end
  
  end
  
