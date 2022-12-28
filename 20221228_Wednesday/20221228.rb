# Leetcode: 1962. Remove Stones to Minimize the Total.
# https://leetcode.com/problems/remove-stones-to-minimize-the-total/
# = = = = = = = = = = = = = =
# Correct.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# At the Leetcode libraries works too long.
# But the algorithm is correct.
# @param {Integer[]} piles
# @param {Integer} k
# @return {Integer}
def min_stone_sum(piles, k)
  # https://www.rubydoc.info/github/kanwei/algorithms/Containers/MaxHeap
  maxheap = MaxHeap.new(piles)
  total = piles.sum
  total_take = 0
  k.times do
    tmp = maxheap.pop
    take = tmp/2
    tmp -= take
    total_take += take
    maxheap.push(tmp)
  end
  return total - total_take
end
