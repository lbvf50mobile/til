# Ruby zip(cycle) JS fromCharCode and ... splat operator.
p "alias x='ruby 20190115_Tuesday/20190115.rb'" 

# zip and cycle for @Qew7777
require 'colorize'
long_array = [1,2,3,4,5]
short_array = ['x','y']
pairs_one = long_array.zip(short_array * long_array.size)
pairs_two = long_array.zip(short_array.cycle)
# [[1, "x"], [2, "y"], [3, "x"], [4, "y"], [5, "x"]]
puts "pairs_one == pairs_two %s" % [(pairs_one == pairs_two).to_s.green]
p pairs_one
p [?a,?b].zip([1,2,3,4,5]*10) 