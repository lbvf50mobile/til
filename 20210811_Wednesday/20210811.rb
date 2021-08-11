# Leetcode: 954. Array of Doubled Pairs.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/614/week-2-august-8th-august-14th/3877/
# https://leetcode.com/problems/array-of-doubled-pairs/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {Integer[]} arr
# @return {Boolean}
def can_reorder_doubled(arr)
  sorted = arr.sort_by{|x| x.abs}
  counter = sorted.each_with_object(Hash.new){|el,obj| obj[el] ||= 0; obj[el]+=1}
  sorted.each do |x|
    next if counter[x].zero?
    return false if counter[x*2].nil? || counter[x*2].zero?
    counter[x] -= 1
    counter[x*2] -= 1
  end
  return true
end
