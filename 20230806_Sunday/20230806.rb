# Leetcode: 920. Number of Music Playlists.
# https://leetcode.com/problems/number-of-music-playlists/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 99 ms, faster than 100.00% of Ruby online submissions for Number of
# Music Playlists.
# Memory Usage: 212.6 MB, less than 100.00% of Ruby online submissions for
# Number of Music Playlists.
# 2023.08.06 Daily Challenge.
# @param {Integer} n
# @param {Integer} goal
# @param {Integer} k
# @return {Integer}
def num_music_playlists(n, goal, k)
  # Based on:
  # https://leetcode.com/problems/number-of-music-playlists/solution/
  mod = 10**9 + 7  
  dp = Array.new(goal+1){ Array.new(n+1,0)}
  dp[0][0] = 1
  (1..goal).each do |i|
    (1..[i,n].min).each do |j|
      dp[i][j] = dp[i-1][j-1] * (n-j+1)%mod
      if j > k
        dp[i][j] = (dp[i][j] + dp[i-1][j]*(j-k))%mod
      end
    end
  end
  dp[goal][n]
end
