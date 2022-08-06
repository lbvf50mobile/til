# Leetcode: 458. Poor Pigs.
# https://leetcode.com/problems/poor-pigs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 132 ms, faster than 100.00% of Ruby online submissions for Poor Pigs.
# Memory Usage: 211.3 MB, less than 100.00% of Ruby online submissions for Poor Pigs.
# @param {Integer} buckets
# @param {Integer} minutes_to_die
# @param {Integer} minutes_to_test
# @return {Integer}
def poor_pigs(buckets, minutes_to_die, minutes_to_test)
  # Based on: 
  # https://leetcode.com/problems/poor-pigs/discuss/94273/Solution-with-detailed-explanation
  Math.log(buckets, minutes_to_test/minutes_to_die + 1).ceil
end
