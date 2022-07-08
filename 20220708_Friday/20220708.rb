# Leetcode: 1473. Paint House III.
# https://leetcode.com/problems/paint-house-iii/
# @param {Integer[]} houses
# @param {Integer[][]} cost
# @param {Integer} m
# @param {Integer} n
# @param {Integer} target
# @return {Integer}
# Need to read description better.
# I solve other task. One more time. Again.
def min_cost(houses, cost, m, n, target)
  @h,@c = houses,cost
  @n = n
  # Fist create DP. Three dimensions array. house index, color, target.
  @dp = Array.new(m).map{ Array.new(n+1).map{ Array.new(target)}}
  answer = nil
  minus_counter = 0
  (1..n).each do |color|
    tmp = rec(0, color, target-1)
    if -1 == tmp
      minus_counter += 1
    else
      answer = tmp if answer.nil?
      answer = tmp if tmp < answer
    end
  end
  # All ways lead to -1.
  return -1 if minus_counter == n
  return answer
end

def rec(i,color,target)
  # First. Targen must be 0 at least. If target < 0 to many groups.
  return -1 if target < 0
  # Return DP solution if it is already couted.
  return @dp[i][color][target] if @dp[i][color][target]
  #  Get price for color this house.
  #  Free if a house already colored in this color.
  price = (@h[i] == color) ? 0 : @c[i][color-1] # In matrix color 1 is under index 0.
  # This is the last house in the city. It must be at the last grout.
  # Otherwise not all groups are filled.
  if i == @h.size - 1
      return (@dp[i][color][target] = price) if 0 == target
      return (@dp[i][color][target] = -1) 
  end
  answer = nil # Minumum for coloring next house.
  minus_counter = 0
  (1..@n).each do |nc|
    tmp = 0
    if nc == color
      tmp = rec(i+1,color,target) # Same color precerve the tagret.
    else
      tmp = rec(i+1,nc,target-1) # New color target decreased.
    end
    if -1 == tmp 
      minus_counter += 1
    else
      answer = tmp if answer.nil?
      answer = tmp if tmp < answer
    end
  end
  if @n == minus_counter
    @dp[i][color][target] = -1
    return -1
  end
  answer += price # Add current price to a recursive responce.
  @dp[i][color][target] = answer
  return answer
end
