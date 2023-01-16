# Leetcode: 57. Insert Interval.
# https://leetcode.com/problems/insert-interval/
# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  answer = []
  b = new_interval
  intervals.each do |a|
    ol = overlap(a,b)
    insert = a
    # Check overlap with insert one.
    if ol
      insert = merge(a,b)
    end
    # Check do need to overlap with previous.
    if (!answer.empty?) && overlap(answer.last,insert)
      x = answer.pop()
      insert = merge(insert,x)
    end
    answer.push(insert)
  end
  return answer
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
