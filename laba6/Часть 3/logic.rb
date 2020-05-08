# frozen_string_literal: true

# 6_3_main.rb

def diﬀer(func = nil, &block)
  x0 = 0.49
  x1 = 0.50
  x2 = 0.51
  step = 0.01
  if func.nil?
    y0 = block.call(x0)
    y1 = block.call(x1)
    y2 = block.call(x2)
  else
    y0 = func.call(x0)
    y1 = func.call(x1)
    y2 = func.call(x2)
  end
  der_y0 = (-3 * y0 + 4 * y1 - y2) / (2 * step)
  der_y1 = (-y0 + y2) / (2 * step)
  der_y2 = (y0 - 4 * y1 + 3 * y2) / (2 * step)
  [der_y0, der_y1, der_y2]
end
