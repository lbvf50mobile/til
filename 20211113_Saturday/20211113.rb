# Leetcode: 739. Daily Temperatures.
# https://leetcode.com/problems/daily-temperatures/
# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  # 102 because if current temp is 100, greate temp would be 
  # 101 and it would be alway -1. To make agorithm simply.
  @map_t_i = Array.new(102,-1) 
  @tm,@size = temperatures, temperatures.size
  @ans = Array.new(@size,0)
  # Important! Better to tell about key value
  # to reduce posibility of errors.
  @map_t_i[@tm[@size-1]] = @size-1
  i = @size-2
  while i >= 0
    # Working with queue of same temperature.
    if @tm[i+1] == @tm[i]
      t = @tm[i]
      while i >= 0 && @tm[i+1] == @tm[i]
        @map_t_i[t] = i
        @ans[i] = @ans[i+1] + 1 if @ans[i+1] > 0
        i -= 1
      end
      next
    end
    # Working with next day warmer.
    if @tm[i+1] > @tm[i]
      while i >= 0 && @tmp[i+1] > @tm[i]
        @map_t_i[@tm[i]] = i
        @ans[i] = 1
        i -= 1
      end
      next
    end
    t = @tm[i]
    @map_t_i[t] = i
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
    if @map_t_i[t] >= 0
      ans ||= @map_t_i[t]
      ans = @map_t_i[t] if @map_t_i[t] < ans
    end
    t += 1
  end
  ans
end
