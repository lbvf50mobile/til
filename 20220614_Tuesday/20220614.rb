# Leetcode: 583. Delete Operation for Two Strings.
# https://leetcode.com/problems/delete-operation-for-two-strings/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 372 ms, faster than 88.89% of Ruby online submissions for Delete Operation for Two Strings.
# Memory Usage: 214.3 MB, less than 22.22% of Ruby online submissions for Delete Operation for Two Strings.
# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  # Based on: https://leetcode.com/problems/delete-operation-for-two-strings/solution/
  @w1,@w2,@m,@n = word1, word2, word1.size, word2.size
  @dp = Array.new(@m+1).map{ Array.new(@n+1,0)}
  (0..@m).each do |i|
    (0..@n).each do |j|
      next if 0 == i || 0 == j
      if @w1[i-1] == @w2[j-1]
        @dp[i][j] =  1 + @dp[i-1][j-1]
      else
        @dp[i][j] = max(@dp[i-1][j],@dp[i][j-1])
      end
    end
  end
  @m+@n - 2 * @dp[@m][@n] 
end
def max(a,b)
  a > b ? a : b
end
