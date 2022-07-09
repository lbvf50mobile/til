# Leetcode: 1696. Jump Game VI.
# https://leetcode.com/problems/jump-game-vi/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# Wrong answer.
def max_result(nums, k)
  # Let's use pull dp.
  @d = false
  dp = nums.clone
  max = dp[0]
  hp = MaxHeap.new([dp[0]])
  right = k >= dp.size ? dp.size : k
  puts "from 1 till #{right}" if @d

  (1...right).each do |i|
    dp[i] += max
    max = dp[i] if dp[i] > max
    hp.push(dp[i])
    puts "dp[#{i}] = #{dp[i]}" if @d
  end
  return dp[-1] if right >= dp.size
  # Error was in index with numbers. Need to start from k not form k+1.
  # And need to draw images.
  (k...nums.size).each do |i|
    puts "Current dp[#{i}] == #{dp[i]}, and max = #{hp.max}." if @d
    dp[i] += hp.max
    puts "And current value is dp[#{i}] == #{dp[i]}." if @d
    # Who exits?
    # If maximum exit. Need to pop it.
    # and add current value. May be it is a maximum.
    # And here is the same arror. dp[i-1-k] instead of dp[i-k].
    puts "i-k = #{i-k} i = #{i} dp[i-k] == #{dp[i-k]}." if @d
    if dp[i-k] == hp.max
      # I think need to pop every time. Every element we leave outside the window.
      puts "i-k = #{i-k} i = #{i} dp[i-k] == #{dp[i-k]}." if @d 
      hp.pop
      if hp.empty? || dp[i] >= hp.max
        hp.push(dp[i])
      end
    end
  end
  dp[-1]
end
