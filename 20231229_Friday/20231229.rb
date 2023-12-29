# Leetcode: 1335. Minimum Difficulty of a Job Schedule.
# https://leetcode.com/problems/minimum-difficulty-of-a-job-schedule/
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
