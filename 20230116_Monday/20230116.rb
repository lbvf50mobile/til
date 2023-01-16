# Leetcode: 57. Insert Interval.
# https://leetcode.com/problems/insert-interval/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 91 ms, faster than 85.00% of Ruby online submissions for Insert Interval.
# Memory Usage: 212 MB, less than 8.33% of Ruby online submissions for Insert Interval.
# 2023.01.16 Daily Challenge.
# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  ans = []
  ans.push(new_interval)
  intervals.each do |a|
    b = ans.pop
    if overlap(a,b)
      ans.push(merge(a,b))
    elsif a[0] < b[0]
      ans.push(a)
      ans.push(b)
    else
      ans.push(b)
      ans.push(a)
    end
  end
  return ans
end

def overlap(a,b)
  # A start before B ends. Not too right.
  # A ends after B starts. Not too left.
  if a[0] <= b[1] && a[1] >= b[0]
    return  true
  else
    return false
  end
end

def merge(a,b)
  [[a[0],b[0]].min,[a[1],b[1]].max]
end
