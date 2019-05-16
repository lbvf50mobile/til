p "alias x='ruby 20190516_Thursday/20190516.rb'" 

# Ruby Enumerable#reverse_each;

# https://ruby-doc.org/core-2.6.3/Enumerable.html#method-i-reverse_each

[*1..4].reverse_each{|x| p x}
(1..4).reverse_each{|x| p x}
(1..4).reverse_each.each{|x| p x}
(1..4).each.reverse_each{|x| p x}
