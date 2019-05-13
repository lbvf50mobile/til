p "alias x='ruby 20190513_Monday/20190513.rb'" 

# Ruby Method#arity: returns an indication of the number of arguments accepted by a method.

a = ->{2}
b = ->(x,y){x+y}
c = ->z{4}
require 'colorize'
puts "Ruby Arity: Returns an indication of the number of arguments accepted by a method.".green
puts "a.arity == 0 #{a.arity == 0}"
puts "b.arity == 2 #{b.arity == 2}"
puts "c.arity == 1 #{c.arity == 1}"