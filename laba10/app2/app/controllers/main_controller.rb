class MainController < ApplicationController
    def calc
        n = params[:n].to_i
        numbers = (1..n).select {|num| automorphous?(num) } # от 1 до н выбираем автоморфные числа
        
        render xml: numbers # отдаем хмл
    end

    private
  def automorphous?(num)
    squared = (num**2).to_s # берет квадрат числа и преобразовывает в строку
    num.to_s == squared[squared.length-num.to_s.length..-1] # берем срез строки квадрата числа длинной в исходное число, т.е. для 25 и 625 возьмется '625'[1..2]
  end

end