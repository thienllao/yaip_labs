
def function(x)
  (((-1)**(x-1)) * Math.sin(x*2))/x
end
def func(accuracy, &block)
  e = Enumerator.new do |yielder|
    n = 0
    y = 0.0
    loop do
      y += yield(n+=1)
      yielder.yield y, n
    end
  end

  e.find { |y,n| (1-y).abs < accuracy }

end
