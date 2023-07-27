# Leetcode: 2141. Maximum Running Time of N Computers.
# https://leetcode.com/problems/maximum-running-time-of-n-computers/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 146 ms, faster than 100.00% of Ruby online submissions for Maximum
# Running Time of N Computers.
# Memory Usage: 221 MB, less than 100.00% of Ruby online submissions for Maximum
# Running Time of N Computers.
# 2023.07.27 Daily Challenge.
# @param {Integer} n
# @param {Integer[]} batteries
# @return {Integer}
def max_run_time(n, batteries)
  # Based on:
  # https://leetcode.com/problems/maximum-running-time-of-n-computers/solution/
  b = batteries
  b.sort!
  e = b[0...-n].sum
  l = b[-n..-1]
  (n-1).times do |i|
    return l[i] + e/(i+1) if e/(i+1) < l[i+1] - l[i]
    e -= (i+1)*(l[i+1] - l[i])
  end
  return l[-1] + e/n
end
