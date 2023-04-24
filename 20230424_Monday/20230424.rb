# Leetcode: 1046. Last Stone Weight.
# https://leetcode.com/problems/last-stone-weight/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God! Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 75 ms, faster than 83.33% of Ruby online submissions for Last Stone
# Weight.
# Memory Usage: 211.1 MB, less than 52.38% of Ruby online submissions for Last
# Stone Weight.
# 2023.04.24 Daily Challenge.
# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  # Smash biggest stones.
  stones.sort!
  while 2 <= stones.size 
    a = stones.pop
    b = stones.pop
    c = a - b
    stones.push(c) if c > 0
    stones.sort!
  end
  return stones[0] if 1 == stones.size
  return 0
end
