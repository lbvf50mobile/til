# Leetcode: 458. Poor Pigs.
# https://leetcode.com/problems/poor-pigs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 69 ms, faster than 100.00% of Ruby online submissions for Poor Pigs.
# Memory Usage: 210.9 MB, less than 100.00% of Ruby online submissions for Poor
# Pigs.
# 2023.10.29 Daily Challenge.
# @param {Integer} buckets
# @param {Integer} minutes_to_die
# @param {Integer} minutes_to_test
# @return {Integer}
def poor_pigs(buckets, minutes_to_die, minutes_to_test)
  # Based on:
  # https://leetcode.com/problems/poor-pigs/discuss/94266/Another-explanation-and-solution
  ans = 0
  while (minutes_to_test/minutes_to_die + 1) ** ans < buckets
    ans += 1
  end
  return ans
end
