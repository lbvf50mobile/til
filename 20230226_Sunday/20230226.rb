# Leetcode: 72. Edit Distance.
# https://leetcode.com/problems/edit-distance/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 128 ms, faster than 87.50% of Ruby online submissions for Edit Distance.
# Memory Usage: 213 MB, less than 20.83% of Ruby online submissions for Edit Distance.
# 2023.02.26 Daily Challenge.
# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  # Based on:
  # https://leetcode.com/problems/edit-distance/solution/
  @w1, @w2 = word1, word2
  @dp = Array.new(@w1.size+1).map{ Array.new(@w2.size+1,nil)}
  return dfs(@w1.size,@w2.size)
end
def dfs(i,j)
  return i if 0 == j
  return j if 0 == i
  return @dp[i][j] if @dp[i][j]
  dist = 0
  if @w1[i-1] == @w2[j-1]
    dist = dfs(i-1,j-1)
  else
    insert = dfs(i,j-1)
    delete = dfs(i-1,j)
    replace = dfs(i-1,j-1)
    dist = [insert,delete,replace].min + 1
  end
  @dp[i][j] = dist
  return dist
end
