# Leetcode: 583. Delete Operation for Two Strings.
# https://leetcode.com/problems/delete-operation-for-two-strings/
# @param {String} word1
# @param {String} word2
# @return {Integer}
# TLE.
def min_distance(word1, word2)
  # Based on: https://leetcode.com/problems/delete-operation-for-two-strings/solution/
  @w1,@w2,@m,@n = word1, word2, word1.size, word2.size
  @mem = Array.new(@m+1).map{ Array.new(@n+1,0)}
  @m+@n - 2*lcs(@m,@n)
end

def lcs(m,n)
  return 0 if 0 == m || 0 == n
  return @mem[m][n] if @mem[m][n] > 0
  if @w1[m-1] == @w2[n-1]
    @mem[m][n] = 1 + lcs(m-1,n-1)
  else
    @mem[m][n] = [lcs(m-1,n),lcs(m,n-1)].max
  end
  return @mem[m][n]
end
