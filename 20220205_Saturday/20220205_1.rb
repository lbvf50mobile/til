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
  pairs = counter[0] ? counter[0]/2 : 0
  puts "Number of pairs is #{pairs}." if @d
  puts "Keys: #{counter.keys.inspect}." if @d
  counter.keys.each do |el|
    if 0 != el
      pairs += 1 if counter[el*2]
    end
  end
  ans = pairs >= arr.size/2
  puts "Final: pairs = #{pairs}; size/2 = #{arr.size/2};" if @d
  puts "Return: #{ans.inspect}." if @d
  return ans
end
