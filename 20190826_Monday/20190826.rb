p "alias x='ruby 20190826_Monday/20190826.rb'" 

# Ruby: Set Intersection and Set Union for remove dublicates. (and Hash[dub.zip(dup)] with GroupBy)

# https://www.codewars.com/kata/remove-duplicates/ruby

# https://docs.ruby-lang.org/en/2.0.0/Array.html#method-i-7C
# Set Union — Returns a new array by joining ary with other_ary, excluding any duplicates and preserving the order from the original array.

# https://docs.ruby-lang.org/en/2.0.0/Array.html#method-i-26
# Set Intersection — Returns a new array containing elements common to the two arrays, excluding any duplicates. The order is preserved from the original array.

require 'set'

dub = [1,1,1,1,2,2,1,2,3,2,1]
ans = [1,2,3]

p ans == (dub & dub) && ans == ( [] | dub) && ans == dub.uniq && ans == dub.to_set.to_a
p ans == Hash[dub.zip(dub)].keys && ans == dub.group_by{|i| i}.map(&:first)
