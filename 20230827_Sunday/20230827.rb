# Leetcode: 403. Frog Jump.
# https://leetcode.com/problems/frog-jump/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 131 ms, faster than 100.00% of Ruby online submissions for Frog Jump.
# Memory Usage: 214.4 MB, less than 100.00% of Ruby online submissions for Frog
# Jump.
# 2023.08.27 Daily Challenge.
# @param {Integer[]} stones
# @return {Boolean}
def can_cross(stones)
  # Based on:
  # https://leetcode.com/problems/frog-jump/solution/
  @s = stones
  @m = {}  # Key is a stone position, value is an index.
  @s.each_with_index do |v,i|
    @m[v] = i
  end
  @dp = Array.new(2001){ Hash.new}
  return dfs(0,0)
end

# Curren index.
# previous jump.
def dfs(i,pr_ju)
  # If reached the last stone it is a true.
  return true if i == @s.size - 1
  # May be this problem already been calculated?
  return @dp[i][pr_ju] if ! @dp[i][pr_ju].nil?
  3.times do |delta|
    ne_ju = pr_ju - 1 + delta # k - 1; k + 0 ; k + 1;
    j = @m[@s[i] + ne_ju]
    if 0 < ne_ju && j
      tmp = dfs(j, ne_ju)
      if tmp
        @dp[i][pr_ju] = true
        return true
      end
    end
  end
  @dp[i][pr_ju] = false
  return false
end
