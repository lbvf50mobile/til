#/usr/bin/env ruby

# Ruby Array#Transpose. (Rows=>Cols, Cols=>Rows)

p "alias x='ruby 20180809_Thursday/20180809.rb'" 

require "colorize"

puts "Rows become columns and columns become rows.".green
a = [[1,2],
[3,4]]
require "pp"
pp a
puts "transpose:".magenta

pp a.transpose

