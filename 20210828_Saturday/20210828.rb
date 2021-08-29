# Leetcode: 1235. Maximum Profit in Job Scheduling.
# https://leetcode.com/problems/maximum-profit-in-job-scheduling/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/616/week-4-august-22nd-august-28th/3950/
# https://leetcode.com/problems/maximum-profit-in-job-scheduling/discuss/408957/DP%2BBinary-search-(Java)
# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer[]} profit
# @return {Integer}
def job_scheduling(start_time, end_time, profit)
  # https://leetcode.com/problems/maximum-profit-in-job-scheduling/discuss/408957/DP%2BBinary-search-(Java)
  jobs = start_time.map.with_index do |el,i|
    x = {st: el, fn: end_time[i],pr: profit[i]}
    x
  end
  return schedule_apt(jobs)
end

def schedule_apt(jobs)
  # Sort jobs according to finish time.
  jobs.sort_by!{|x| x[:fn]}
  n = jobs.size
  dp = Array.new(n)
  dp[0] = jobs[0][:pr]
  (1...n).each do |i|
    profit = jobs[i][:pr]
    l = search(jobs,i)
    profit += dp[l] if l != -1
    # Store maximum of includiong and excluding.
    dp[i] = profit
    dp[i] = dp[i-1] if dp[i-1] > dp[i]
  end
  dp[n-1]
end

def search(jobs,i)
  st,fn = 0, i-1
  while st <= fn
    mid = (st+fn)/2
    if jobs[mid][:fn] <= jobs[i][:st]
      if jobs[mid+1][:fn] <= jobs[i][:st]
        st = mid + 1
      else
        return mid
      end
    else
      fn = mid - 1
    end
  end
  -1
end
