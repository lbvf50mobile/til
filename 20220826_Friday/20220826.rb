# Leetcode: 869. Reordered Power of 2.
# https://leetcode.com/problems/reordered-power-of-2/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 82 ms, faster than 100.00% of Ruby online submissions for Reordered Power of 2.
# Memory Usage: 210.9 MB, less than 100.00% of Ruby online submissions for Reordered Power of 2.
# @param {Integer} n
# @return {Boolean}
def reordered_power_of2(n)
  require "set"
  @two ||= get_powers_of_2()
    .map{|x| x.to_s.chars.sort.join}.to_set
  @two.include?(n.to_s.chars.sort.join)
end

def get_powers_of_2()
  answer = []
  value = 1
  border = 10**9 
  while value <= border
    answer.push value
    value *= 2
  end
  answer
end

