# Leetcode: 954. Array of Doubled Pairs.
# https://leetcode.com/problems/array-of-doubled-pairs/
# @param {Integer[]} arr
# @return {Boolean}
def can_reorder_doubled(arr)
  @d = true
  puts "#{arr.inspect}" if @d
  if arr.size.odd?
    puts "return false because #{arr.size}." if @d
    return false
  end
  counter = arr.each_with_object(Hash.new){|el,o| o[el]||=0; o[el]+=1;}
  if counter[0] && counter[0].odd?
    puts "return false because #{counter[0]}" if @d
    return false
  end
  counter.keys.select{|x| x != 0}.each do |el|
    a = counter[el] == counter[el*2] 
    b = el.abs.even?  && counter[el] == counter[ el/2]
    puts "#{el}, #{counter[el]}, #{counter[el/2]}, #{a.inspect}, #{b.inspect}" if @d
    return false if !( a || b )
  end
  true
end
