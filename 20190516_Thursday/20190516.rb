#!/usr/bin/env ruby
p "alias x='ruby 20190516_Thursday/20190516.rb'" 

# Ruby Enumerable#reverse_each;

# https://ruby-doc.org/core-2.6.3/Enumerable.html#method-i-reverse_each
require "colorize"
s = ""
[*1..4].reverse_each{|x| s << x.to_s}
puts s.green
s = ""
(1..4).reverse_each{|x| s << x.to_s}
puts s.red
s = ""
(1..4).reverse_each.each{|x| s << x.to_s}
puts s.green
s =""
(1..4).each.reverse_each{|x| s << x.to_s}
puts s.red
