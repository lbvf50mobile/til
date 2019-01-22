#!/usr/bin/env ruby

# Ruby less elements each_cons => empty, each_slice => small sub array.

p "alias x='ruby 20190122_Tuesday/20190122.rb'" 

p [1,2,3,4].each_cons(5).to_a
p [1,2,3,5].each_slice(5).to_a
