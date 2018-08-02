# https://www.codewars.com/kata/form-the-largest/train/ruby

x = [2,1,3]

p x.sort_by(&:-@)
p x.sort_by{ |a| -a} 
puts(5.send(:-@))
puts(-5)
