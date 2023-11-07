# Leetcode: 1921. Eliminate Maximum Number of Monsters.
# https://leetcode.com/problems/eliminate-maximum-number-of-monsters/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 241 ms, faster than 100.00% of Ruby online submissions for Eliminate
# Maximum Number of Monsters.
# Memory Usage: 224.1 MB, less than 100.00% of Ruby online submissions for
# Eliminate Maximum Number of Monsters.
# 2023.11.07 Daily Challenge.
# @param {Integer[]} dist
# @param {Integer[]} speed
# @return {Integer}
def eliminate_maximum(dist, speed)
  # Based on:
  # https://leetcode.com/problems/eliminate-maximum-number-of-monsters/
  arrival = []
  dist.size.times do |i|
    arrival.push(dist[i].fdiv(speed[i]))
  end
  arrival.sort!
  ans = 0
  arrival.each_with_index do |val, i|
    break if val <= i
    ans += 1
  end
  return ans
end
