# Leetcode: 1143. Longest Common Subsequence.
# https://leetcode.com/problems/longest-common-subsequence/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 979 ms, faster than 57.58% of Ruby online submissions for Longest Common Subsequence.
# Memory Usage: 219.7 MB, less than 24.24% of Ruby online submissions for Longest Common Subsequence.
# 2022.12.15 Daily Challenge.
# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  # Based on hints.
  # dp[i][j] stores maximum length of LCS for
  # t1[0..i] and t2[0..j]. Thus it has len(t1)*len(t2) elemetns.
  @dp = Array.new(text1.size).map{ Array.new(text2.size,0)}
  # if t1[i] == t2[j] => dp[i][j] = dp[i-1][j-1] + 1
  # otherwise dp[i][j] = max(dp[i-1][j],dp[i][j-1])
  @t1,@t2 = text1, text2
  (0...@t1.size).each do |i|
    (0...@t2.size).each do |j|
      if @t1[i] == @t2[j]
        @dp[i][j] = get(i-1,j-1) + 1
      else
        @dp[i][j] = [get(i-1,j),get(i,j-1)].max
      end
    end
  end
  @dp.last.last
end
def get(i,j)
  return 0 if ! i.between?(0,@dp.size - 1)
  return 0 if ! j.between?(0,@dp[0].size - 1)
  return @dp[i][j]
end
