#!/usr/bin/env ruby

# Ruby @

# https://stackoverflow.com/questions/40072250/what-does-mean-as-a-method-in-ruby
# http://www.rubyinside.com/rubys-unary-operators-and-how-to-redefine-their-functionality-5610.html
# https://youtu.be/K8uhD8mtorE
# https://apidock.com/ruby/Enumerable/sort_by

p "alias x='ruby 20180802_Thursday/20180802.rb'" 

x = [2,1,3]
p x.sort_by(&:-@)
p x.sort_by{ |a| -a} 
puts(5.send(:-@))
puts(-5)
p x.sort_by(&:+@)
p x.sort_by{ |a| +a} 