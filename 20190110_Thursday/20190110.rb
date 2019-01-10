#!/usr/bin/env ruby

# Ruby Array#* and <=>

# https://docs.ruby-lang.org/en/2.0.0/Array.html#method-i-2A

p "alias x='ruby 20190110_Thursday/20190110.rb'" 

p [?x,?y,?z] * ?\n # "x\ny\nz"
p [?x,?y,?z] * 2 # ["x","y","z","x","y","z"]

# After this @davydovanton add next links
# http://davydovanton.com/2016/11/16/ruby-tips-part-one/
# http://davydovanton.com/2016/11/23/ruby-tips-part-two/

z = {-1 => "hi", 0 => "why", 1 => "my"}
puts z[2 <=> 5]
puts z[2 <=> 2]
puts z[2 <=> 1]
# this dose not works
# p {-1 => "hi", 0 => "why", 1 => "my"}[ 2 <=> 5]
# Because hash treat like a block for p method.