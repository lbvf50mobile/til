# Leetcode: 56. Merge Intervals. 
# https://leetcode.com/problems/merge-intervals/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 80 ms, faster than 49.06% of Ruby online submissions for Merge Intervals.
# Memory Usage: 210.6 MB, less than 64.15% of Ruby online submissions for Merge Intervals.
# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  inter = intervals.sort{|a,b|
    if a[0] != b[0]
      a[0] - b[0]
    else
      a[1] - b[1]
    end
  }
  x = inter.shift()
  ans = []
  ans.push(x)
  while ! inter.empty?
    x = inter.shift()
    if overlap(ans.last, x)
      min_start = ans.last[0]
      max_end = ans.last[1]
      min_start = x[0] if x[0] < min_start
      max_end = x[1] if x[1] > max_end
      ans.last[0] = min_start
      ans.last[1] = max_end
    else
      ans.push(x)
    end
  end
  ans
end

def overlap(a,b)
  # Starts before end.
  # Ends after start.
  a[0] <= b[1] && a[1] >= b[0]
end
