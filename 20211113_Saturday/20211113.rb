# Leetcode: 739. Daily Temperatures.
# https://leetcode.com/problems/daily-temperatures/
# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  # 102 because if current temp is 100, greate temp would be 
  # 101 and it would be alway -1. To make agorithm simply.
  @map = Array.new(102,-1) 
  @tm,@size = temperatures, temperatures.size
  @ans = Array.new(@size,0)
  @map[@tm[@size-1]] = @size-1
  i = @size-2
  while i >= 0
    t = @tm[i]
    @map[t] = i
    j = greate_temp_index(t)
    @ans[i] = (j-i) if j
    i -= 1
  end
  @ans
end

def greate_temp_index(t)
  ans = nil
  t = t+1
  # Temp could be 101 to be greater then 100.
  while t < 102
    # Index must be positive.
    if @map[t] >= 0
      ans ||= @map[t]
      ans = @map[t] if @map[t] < ans
    end
    t += 1
  end
  ans
end
