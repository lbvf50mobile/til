# Leetcode: 1639. Number of Ways to Form a Target String Given a Dictionary.
# https://leetcode.com/problems/number-of-ways-to-form-a-target-string-given-a-dictionary/
# @param {String[]} words
# @param {String} target
# @return {Integer}
# TLE.
# 2023.04.16 Daily Challenge.
def num_ways(words, target)
  # Based on:
  # https://leetcode.com/problems/number-of-ways-to-form-a-target-string-given-a-dictionary/solution/
  alph,mod,m,k = 26, 1000000007, target.size, words[0].size
  cnt = Array.new(alph).map{ Array.new(k,0)}
  (0...k).each do |j|
    words.each do |word|
      cnt[word[j].ord - ?a.ord][j] += 1
    end
  end
  dp = Array.new(m+1).map{ Array.new(k+1,0)}
  dp[0][0] = 1
  (0..m).each do |i|
    (0...k).each do |j|
      if i < m
        a = cnt[target[i].ord - ?a.ord][j]
        dp[i+1][j+1] += a * dp[i][j] 
        dp[i+1][j+1] %= mod
      end
      dp[i][j+1] += dp[i][j]
      dp[i][j+1] %= mod
    end
  end
  return dp[m][k]
end
