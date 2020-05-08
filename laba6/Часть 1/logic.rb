
class Func
  def initialize(ksi)
    @ksi = ksi
    @count = 0
  end
  attr_reader :count
  def func
    y = 0.0
    n = 1
    loop do
      y += (((-1)**(n-1)) * Math.sin(n*2))/n
      n += 1
      @count += 1
        break if (1-y).abs < @ksi
      end
      y
  end
end
