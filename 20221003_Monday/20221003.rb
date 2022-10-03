# Leetcode: 1578. Minimum Time to Make Rope Colorful.
# https://leetcode.com/problems/maximum-time-to-make-rope-colorful/
# @param {String} colors
# @param {Integer[]} needed_time
# @return {Integer}
# TLE.
def min_cost(colors, needed_time)
  @d = false
  counter = 1
  sum = needed_time[0]
  max  = needed_time[0]
  answer = 0
  (1...needed_time.size).each do |i|
    puts "#{colors[i-1]} and #{colors[i]}" if @d
    puts "sum = #{sum}, max = #{max}, answer = #{answer}" if @d


    if colors[i] == colors[i-1]
      sum += needed_time[i]
      max = needed_time[i] if needed_time[i] > max
      puts "Update: sum=#{sum}, max=#{max},answer=#{answer}" if @d
    else
      answer += (sum - max)
      sum = needed_time[i]
      max = needed_time[i]
      puts "Reset: sum=#{sum}, max=#{max},answer=#{answer}" if @d
    end
  end
  answer += (sum - max)
  return answer
end
