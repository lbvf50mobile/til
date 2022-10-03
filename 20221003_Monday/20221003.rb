# Leetcode: 1578. Minimum Time to Make Rope Colorful.
# https://leetcode.com/problems/maximum-time-to-make-rope-colorful/
# @param {String} colors
# @param {Integer[]} needed_time
# @return {Integer}
def min_cost(colors, needed_time)
  counter = 1
  sum = needed_time[0]
  max  = needed_time[0]
  answer = 0
  (1...needed_time.size).each do |i|
    if colors[i] == colors[i-1]
      sum += needed_time[i]
      max = needed_time[i] if needed_time[i] > max
    else
      answer += (sum - max)
      sum = needed_time[i]
      max = needed_time[i]
    end
  end
  answer += (sum - max)
  return answer
end
