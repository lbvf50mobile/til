# Leetcode: 1535. Find the Winner of an Array Game.
# https://leetcode.com/problems/find-the-winner-of-an-array-game
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 109 ms, faster than 100.00% of Ruby online submissions for Find the
# Winner of an Array Game.
# Memory Usage: 226.4 MB, less than 100.00% of Ruby online submissions for Find
# the Winner of an Array Game.
# 2023.11.05 Daily Challenge.
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def get_winner(arr, k)
  # Based on:
  # https://leetcode.com/problems/find-the-winner-of-an-array-game/solution/
  max_element = arr.max
  queue = arr[1..-1] || []
  curr = arr[0]
  winstreak = 0
  while ! queue.empty?
    opponent = queue.shift
    if curr > opponent
      queue.push(opponent)
      winstreak += 1
    else
      queue.push(curr)
      curr = opponent
      winstreak = 1
    end
    if k == winstreak || curr == max_element
      return curr
    end
  end
  raise "Cannot be here."
end
