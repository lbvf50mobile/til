# Leetcode: 1335. Minimum Difficulty of a Job Schedule.
# https://leetcode.com/problems/minimum-difficulty-of-a-job-schedule/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1558 ms, faster than 83.33% of Ruby online submissions for Minimum Difficulty of a Job Schedule.
# Memory Usage: 211 MB, less than 100.00% of Ruby online submissions for Minimum Difficulty of a Job Schedule.
# 2022.10.16 Daily Challenge.
# @param {Integer[]} job_difficulty
# @param {Integer} d
# @return {Integer}
def min_difficulty(job_difficulty, d)
  # Based on:
  # https://leetcode.com/problems/minimum-difficulty-of-a-job-schedule/discuss/490316/JavaC%2B%2BPython3-DP-O(nd)-Solution
  n, inf = job_difficulty.size, Float::INFINITY
  dp = Array.new(d+1).map{ Array.new(n, Float::INFINITY) + [0]}
  (1..d).each do |de|
    (0..n-de).each do |i|
      maxd = 0
      (i..n-de).each do |j|
        maxd = [maxd, job_difficulty[j]].max
        dp[de][i] = [dp[de][i],maxd + dp[de-1][j+1]].min
      end
    end
  end
  dp[d][0] < inf ? dp[d][0] : -1
end
