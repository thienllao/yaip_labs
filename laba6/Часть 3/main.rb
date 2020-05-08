# frozen_string_literal: true

# tui_for_f_t_s3.rb
require_relative 'logic'
require_relative 'test'

fun = ->(x) {  Math.sin(x) }
puts "Производные для sin(x) в точках 0.49 0.50 0.51:"
puts diﬀer(fun)[0]
puts diﬀer(fun)[1]
puts diﬀer(fun)[2]
puts "Производные для tan(x+1) в точках 0.49 0.50 0.51:"
puts diﬀer() { |x| Math.tan(x+1) }[0]
puts diﬀer() { |x| Math.tan(x+1) }[1]
puts diﬀer() { |x| Math.tan(x+1) }[2]



