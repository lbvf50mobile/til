# Leetcode: 1473. Paint House III.
# https://leetcode.com/problems/paint-house-iii/
# @param {Integer[]} houses
# @param {Integer[][]} cost
# @param {Integer} m
# @param {Integer} n
# @param {Integer} target
# @return {Integer}
def min_cost(houses, cost, m, n, target)
  @h,@c = houses,cost
  @dp = Array.new(m).map{ Array.new(n).map{ Array.new(target)}}
  answer = nil
  minus_counter = 0
  n.times do |color|
    tmp = rec(0, color, target-1)
    if -1 == counter
      minus_counter += 1
    else
      answer = tmp if answer.nil?
      answer = tmp if tmp < answer
    end
  end
  return -1 if minus_counter == n
  return answer
end

def rec(i,color,target)
  return -1 if target < 0
  return @dp[i][color][target] if @dp[i][color][target]
  price = @c[i][color]
  if i == @h.size - 1
  end
  answer = nil
  minus_counter = 0
  n.times do |nc|
    tmp = 0
    if nc == color
      tmp = rec(i+1,color,target)
    else
      tmp = rec(i+1,nc,target-1)
    end
    if tmp == -1
      minus_counter += 1
    else
      answer = tmp if answer.nil?
      answer = tmp if tmp < answer
    end
  end
  if n == minus_counter
    @dp[i][color][target] = -1
    return -1
  end
  answer += price
  @dp[i][color][target] = answer
  return answer
end
