# Leetcode: 2462. Total Cost to Hire K Workers.
# https://leetcode.com/problems/total-cost-to-hire-k-workers/
# @param {Integer[]} costs
# @param {Integer} k
# @param {Integer} candidates
# @return {Integer}
# Error:
#
def total_cost(costs, k, candidates)
  return costs.sum if k == costs.size
  return costs.sort[0...k].sum if 2*candidates >= costs.size
  ans = 0
  i = candidates
  j = costs.size - 1 - candidates
  a = MinHeap.new(costs[0...candidates])
  b = MinHeap.new(costs[-candidates..-1])
  k.times do 
    if a.min < b.min
      ans += a.min
      a.pop
      a.push(costs[i])
      i += 1
    elsif b.min < a.min
      ans += b.min
      b.pop
      b.push(costs[j])
      j -= 1
    else
      ans += a.min
      a.pop
      a.push(costs[i])
      i += 1
    end
  end
  return ans
end
