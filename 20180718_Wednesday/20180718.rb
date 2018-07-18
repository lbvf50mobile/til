# Array#index

p "alias x='ruby 20180718_Wednesday/20180718.rb'" 
require 'colorize'
array = ['one','two',"three","four"]
p array
puts "Index of existed:".yellow
p array.index('one')
p array[0]
puts "Index of unexisted".yellow
p array.index('not exists')
