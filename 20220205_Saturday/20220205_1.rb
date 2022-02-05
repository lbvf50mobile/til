# Leetcode: 954. Array of Doubled Pairs.
# https://leetcode.com/problems/array-of-doubled-pairs/
# @param {Integer[]} arr
# @return {Boolean}
# Fails on: [4,-2,2,-4]
def can_reorder_doubled(arr)
  return false if arr.size.odd?
  arr = arr.sort
  (0...arr.size/2).each do |i|
    return false if arr[i] * 2 != arr[i+arr.size/2]
  end
  true
end
