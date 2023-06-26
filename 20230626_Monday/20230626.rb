# Leetcode: 2462. Total Cost to Hire K Workers.
# https://leetcode.com/problems/total-cost-to-hire-k-workers/
# = = = = = = = = = = = = = =
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# 2023.06.26 Daily Challenge.
# @param {Integer[]} costs
# @param {Integer} k
# @param {Integer} candidates
# @return {Integer}
# TLE.
def total_cost(costs, k, candidates)
  # Hint from:
  # https://leetcode.com/problems/total-cost-to-hire-k-workers/solution/
  return costs.sum if k == costs.size
  return costs.sort[0...k].sum if 2*candidates >= costs.size
  ans = 0
  i = candidates
  j = costs.size - 1 - candidates
  a = MinHeap.new(costs[0...candidates])
  b = MinHeap.new(costs[-candidates..-1])
  k.times do 
    if i > j
      if a.empty?
        ans += b.pop
      elsif b.empty?
        ans += a.pop
      elsif a.min <= b.min
        ans += a.pop
      elsif b.min < a.min
        ans += b.pop
      else
        raise "Not enought space to fill k elements."
      end
      next
    end
    if a.min <= b.min
      ans += a.pop
      a.push(costs[i])
      i += 1
    else
      ans += b.pop
      b.push(costs[j])
      j -= 1
    end
  end
  return ans
end
