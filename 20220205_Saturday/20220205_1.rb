# Leetcode: 954. Array of Doubled Pairs.
# https://leetcode.com/problems/array-of-doubled-pairs/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 662 ms, faster than 50.00% of Ruby online submissions for Array of Doubled Pairs.
# Memory Usage: 221.9 MB, less than 50.00% of Ruby online submissions for Array of Doubled Pairs.
# @param {Integer[]} arr
# @return {Boolean}
def can_reorder_doubled(arr)
  return false if arr.size.odd?
  arr = arr.sort_by{|x| x.abs}
  counter = arr.each_with_object(Hash.new){|e,o| o[e]||=0; o[e]+=1;}
  arr.each do |el|
    next if 0 == counter[el]
    return false if ! counter[el*2]
    return false if counter[el*2] <= 0
    counter[el] -= 1
    counter[el*2] -= 1
  end
  true
end
