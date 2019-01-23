p "alias x='ruby 20190123_Wednesday/20190123.rb'" 

# Ruby each.cycle.take, each_char.cycle.take, map.with_index;

p [1,2,3].each.cycle.take(9)
p "xyz".each_char.cycle.take(9)
p [1,2,3].map.with_index(8){|x,y| [x.to_s.to_sym,y]}.to_h
