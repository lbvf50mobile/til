#!/usr/bin/env ruby
p "alias x='ruby 20190501_Wednesday/20190501.rb'" 

# Ruby Numeric#negative?, Numeric#zero?, Numeric#nonzero?, Numeric#positive?;

array = (-1..1).map{ |x|
{val:x, negative:x.negative?, zero: x.zero?, nonzero: x.nonzero?, positive: x.positive?}
}.to_a
p array
