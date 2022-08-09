# Leetcode: 823. Binary Trees With Factors.
# https://leetcode.com/problems/binary-trees-with-factors/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 573 ms, faster than 100.00% of Ruby online submissions for Binary Trees With Factors.
# Memory Usage: 211.4 MB, less than 100.00% of Ruby online submissions for Binary Trees With Factors.
# @param {Integer[]} arr
# @return {Integer}
def num_factored_binary_trees(arr)
  # Based on:
  # https://leetcode.com/problems/binary-trees-with-factors/solution/
  mod = (10**9) + 7
  arr.sort!
  dp = Array.new(arr.size,1)
  index = {}
  arr.each_with_index do |el,i|
    index[el] = i
  end
  arr.each_with_index do |x,i|
    (0...i).each do |j|
      if 0 == x%arr[j]
        right = x/arr[j]
        if index[right]
          dp[i] += dp[j] * dp[index[right]]
          dp[i] %= mod
        end
      end
    end
  end
  dp.sum % mod
end
