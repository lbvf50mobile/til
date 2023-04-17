# Leetcode: 1431. Kids With the Greatest Number of Candies.
# https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 105 ms, faster than 6.67% of Ruby online submissions for Kids With
# the Greatest Number of Candies. 
# Memory Usage: 211.1 MB, less than 60.00% of Ruby online submissions for Kids
# With the Greatest Number of Candies.
# 2023.04.17 Daily Challenge.
# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  max = candies.max
  ans = Array.new(candies.size, false)
  (0...candies.size).each do |i|
    ans[i] = true if candies[i]+extra_candies >= max
  end
  return ans
end
