# Leetcode: 2244. Minimum Rounds to Complete All Tasks.
# https://leetcode.com/problems/minimum-rounds-to-complete-all-tasks/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 566 ms, faster than 50.00% of Ruby online submissions for Minimum Rounds to Complete All Tasks.
# Memory Usage: 228.7 MB, less than 100.00% of Ruby online submissions for Minimum Rounds to Complete All Tasks.
# 2023.01.04 Daily Challenge.
# @param {Integer[]} tasks
# @return {Integer}
def minimum_rounds(tasks)
  h = {}
  tasks.each do |t|
    h[t] ||= 0
    h[t] += 1
  end
  counter = 0
  h.keys.each do |i|
    x = h[i]
    return -1 if 1 == x
    counter += x/3
    counter += 1 if 0 != x%3
  end
  return counter
end
