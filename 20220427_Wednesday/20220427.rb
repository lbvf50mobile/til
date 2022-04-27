# Leetcode: 1202. Smallest String With Swaps.
# https://leetcode.com/problems/smallest-string-with-swaps/
# @param {String} s
# @param {Integer[][]} pairs
# @return {String}
# TLE
def smallest_string_with_swaps(s, pairs)
  require 'set'
  global_set = Set.new
  array_set = []
  @s = s.chars
  pairs.each do |(a,b)|
    a_in = global_set.include?(a)
    b_in = global_set.include?(b)
    if (! a_in) && (! b_in)
      array_set.push( Set.new([a,b]))
      global_set.add(a)
      global_set.add(b)
      next
    end
    if a_in && b_in
      a_index = array_set.find_index{|x| x.include?(a)}
      b_index = array_set.find_index{|x| x.include?(b)}
      next if a_index == b_index
      array_set[b_index].merge(array_set[a_index])
      array_set[a_index] = Set.new
      next
    end
    source = a_in ? a : b
    new_one = a_in ? b : a
    source_index = array_set.find_index{|x| x.include?(source)}
    array_set[source_index].add(new_one)
    global_set.add(new_one)
  end
  array_set.each do |x|
    insert_set(x)
  end
  @s.join
end

def insert_set(x)
  x = x.to_a.sort
  chars = x.map{|i| @s[i]}.sort
  x.zip(chars).each{|(i,c)| @s[i] = c}
end

