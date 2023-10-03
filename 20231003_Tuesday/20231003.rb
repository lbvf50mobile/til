# Leetcode: 1512. Number of Good Pairs.
# https://leetcode.com/problems/number-of-good-pairs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 59 ms, faster than 70.00% of Ruby online submissions for Number of
# Good Pairs.
# Memory Usage: 210.9 MB, less than 95.00% of Ruby online submissions for Number
# of Good Pairs.
# 2023.10.03 Daily Challenge.
# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
 nums.tally.map{|k,v| v}
   .select{|v| v >= 2}
   .sum{|x| comb(x)}
end

def comb(n)
  return fct(n)/(2*fct(n-2))
end

def fct(x)
  return 1 if 0 == x
  ans = 1
  x.times do |i|
    ans *= (i+1)
  end
  return ans
end
