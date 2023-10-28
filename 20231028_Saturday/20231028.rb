# Leetcode: 1220. Count Vowels Permutation. 
# https://leetcode.com/problems/count-vowels-permutation
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 188 ms, faster than 100.00% of Ruby online submissions for Count
# Vowels Permutation.
# Memory Usage: 211.1 MB, less than 100.00% of Ruby online submissions for Count
# Vowels Permutation.
# 2023.10.28 Daily Challenge.
# @param {Integer} n
# @return {Integer}
def count_vowel_permutation(n)
  step = 1
  curr = 0
  nxt = 1
  mod = 10**9 + 7
  a = 0
  e = 1
  i = 2
  o = 3
  u = 4
  dp = [ [1,1,1,1,1],[0,0,0,0,0]]
  (n-1).times do 
    # a = 0
    # e = 1
    # i = 2
    # o = 3
    # u = 4
    # Each vowel 'a' may only be followed by an 'e'.
    dp[nxt][e] = (dp[nxt][e] + dp[curr][a]) % mod
    # Each vowel 'e' my only be followed by 'a' or an 'i'.
    dp[nxt][i] = (dp[nxt][i] + dp[curr][e]) % mod
    dp[nxt][a] = (dp[nxt][a] + dp[curr][e]) % mod
    # Each vowel 'i' may not be followed by 'i'.
    dp[nxt][a] = (dp[nxt][a] + dp[curr][i]) % mod
    dp[nxt][e] = (dp[nxt][e] + dp[curr][i]) % mod
    dp[nxt][o] = (dp[nxt][o] + dp[curr][i]) % mod
    dp[nxt][u] = (dp[nxt][u] + dp[curr][i]) % mod
    # Each vowel 'o' may be followed by 'i' or a 'u'.
    dp[nxt][i] = (dp[nxt][i] + dp[curr][o]) % mod
    dp[nxt][u] = (dp[nxt][u] + dp[curr][o]) % mod
    # Each vowel 'u' my be follewed by 'a'.
    dp[nxt][a] = (dp[nxt][a] + dp[curr][u]) % mod
    if 0 == curr
      curr = 1
      nxt = 0
    else
      curr = 0
      nxt = 1
    end
    dp[nxt].map!{ 0 }
  end

  dp[curr].sum % mod
    
end
