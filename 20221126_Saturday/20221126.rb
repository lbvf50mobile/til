# Leetcode: 1235. Maximum Profit in Job Scheduling.
# https://leetcode.com/problems/maximum-profit-in-job-scheduling/
# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer[]} profit
# @return {Integer}
def job_scheduling(start_time, end_time, profit)
  # Based on:
  # https://leetcode.com/problems/maximum-profit-in-job-scheduling/discuss/918804/Python-Top-Down-and-Bottom-Up-DP-7-lines-each:
  n = start_time.size
  jobs = start_time.zip(end_time, profit).sort_by{|x| x[1]}
  dp = [[0,0]]
  jobs.each do |s,e,pr|
    dp.push([e,dp[i][1]+pr) if dp[i][1] + pr > dp[-1][1]
  end
  return dp[-1][1]
end
