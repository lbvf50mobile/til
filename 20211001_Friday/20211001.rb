# Leetcode: 1143. Longest Common Subsequence.
# https://leetcode.com/problems/longest-common-subsequence/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  # Ok what is sub problem? Sub problems is 
  # two pointers one on the text1, second on the text2.
  @dp = Array.new(text1.size).map{ Array.new(text2.size)}  
  @t1,@t2 = text1, text2
  
  # Let start recursive function.
  rec(0, 0)

  # And retrun maximum value that sotred at the beging.
  @dp[0][0]
end


def rec(i,j)
  return 0 if i >= @t1.size || j >= @t2.size
  return @dp[i][j] if @dp[i][j]
  max = 0
  if @t1[i] == @t2[j]
    max = 1 + rec(i+1,j+1)
  end
  tmp = rec(i+1,j)
  max = tmp if tmp > max
  tmp = rec(i,j+1)
  max = tmp if tmp > max
  tmp = rec(i+1,j+1)
  max = tmp if tmp > max
  @dp[i][j] = max
  return max
end
