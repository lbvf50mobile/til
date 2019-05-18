p "alias x='ruby 20190518_Saturday/20190518.rb'"

# Ruby Array#take, Array#take_while, Array#cycle, Enumerator#with_index;

require "colorize"
a = (1..5).to_a
puts "a.take(2) %s" % [a.take(2).to_s.green]
puts "a.cycle.take(7) %s" % [a.cycle.take(7).to_s.green]
puts "a.take_while{|x| x < 5} %s" % [a.take_while{|x| x < 5}.to_s.green]
puts "a.cycle.take_while.with_index{|x,i| i < 7} %s" % [a.cycle.take_while.with_index{|x,i| i < 7}.to_s.green] 