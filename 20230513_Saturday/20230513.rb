# Leetcode: 2466. Count Ways To Build Good Strings.
# https://leetcode.com/problems/count-ways-to-build-good-strings/
# @param {Integer} low
# @param {Integer} high
# @param {Integer} zero
# @param {Integer} one
# @return {Integer}
# TLE.
def count_good_strings(low, high, zero, one)
  # Based on:
  # https://leetcode.com/problems/count-ways-to-build-good-strings/solution/
  #
  # Use dp[i] to record to numbe of good strings of lenght i.
  dp = Array.new(1 + high, 0)
  dp[0] = 1
  mod = (10**9) + 7
  sum = 0

  # I terate over each lenght.
  (1..high).each do |nd|
    # check if the current string ca be made by append zero `0` and `1`s.
    if nd >= zero
      dp[nd] += dp[nd - zero]
    end
    if nd >= one
      dp[nd] += dp[nd - one]
    end
    if nd.between?(low,high)
      sum += dp[nd]
      sum %= mod
    end
  end
  sum
end
