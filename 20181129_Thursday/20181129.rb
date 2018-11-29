#!/usr/bin/env ruby

# Ruby min/max and partition.

p "alias x='ruby 20181129_Thursday/20181129.rb'"

p [1,2,3,4,50,8,70,700].shuffle.min(2)
p [1,2,3,4,50,8,70,700].shuffle.max(2)

even,odd = [1,2,3,4,50,8,70,700].partition{|x| x.even?}

require 'colorize'

puts "even: ".green + even.inspect
puts "odd:".green + odd.inspect
