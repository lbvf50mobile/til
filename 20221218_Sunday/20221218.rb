# Leetcode: 739. Daily Temperatures.
# https://leetcode.com/problems/daily-temperatures/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 688 ms, faster than 87.23% of Ruby online submissions for Daily Temperatures.
# Memory Usage: 235 MB, less than 8.51% of Ruby online submissions for Daily Temperatures.
# 2022.12.18 Daily Challenge.
# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  t = temperatures
  s = [] # Stack of values.
  si = [] # Stack of indices.
  answer = Array.new(t.size,0)
  t.each_with_index do |v,i|
    while (!s.empty?) && s.last < v
      s.pop()
      j = si.pop() # Index for answer.
      answer[j] = i - j
    end
    s.push(v)
    si.push(i)
  end
  return answer
end
