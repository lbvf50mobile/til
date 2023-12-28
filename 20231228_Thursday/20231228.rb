# Leetcode: 1531. String Compression II.
# https://leetcode.com/problems/string-compression-ii/
# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_length_of_optimal_compression(s, k)
  # Based on:
  # https://leetcode.com/problems/string-compression-ii/discuss/757506/Detailed-Explanation-Two-ways-of-DP-from-33-to-100
  n = s.size
  dp = Array.new(n+1).map{ Array.new(k+1, Float::INFINITY)}
  dp[0].map!{ 0 }
  (1..n).each do |i|
    (0..k).each do |j|
      dp[i][j] = dp[i-1][j-1] if j > 0
      removed, cnt = 0,0
      (1..i).reverse_each do |pe|
        if s[pe-1] == s[i-1]
          cnt += 1
        else 
          removed += 1
          break if removed > j
        end
        dp[i][j] = [dp[i][j], dp[pe-1][j-removed] + calclen(cnt)].min
      end
    end
  end
  return dp[n][k]
end

def calclen(len)
  if 0 == len
    return 0
  elsif 1 == len
    return 1
  elsif len < 10
    return 2
  elsif len < 100
    return 3
  else
    return 4
  end
end
