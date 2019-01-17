#!/usr/bin/env ruby

# Ruby product, zip, cycle;

p "alias x='ruby 20190117_Thursday/20190117.rb'" 

p [1,2,3].product([?a,?b]) # [[1,a],[1,b],[2,a],[2,b],[3,a],[3,b]]
p [1,2,3].zip([?a,?b].cycle) # [[1,a],[2,b],[3,a]]
p [1,2,3].zip([?a,?b,?c,?d]) # [[1,a], [2,b], [3,c]]