# Leetcode: 1046. Last Stone Weight.
# https://leetcode.com/problems/last-stone-weight/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 105 ms, faster than 68.75% of Ruby online submissions for Last Stone Weight.
# Memory Usage: 210.9 MB, less than 87.50% of Ruby online submissions for Last Stone Weight.
# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  while stones.size > 1
    stones.sort!
    a,b = stones.pop(2)
    stones.push(b-a) if b - a > 0
  end
  0 == stones.size ? 0 : stones.first
end
