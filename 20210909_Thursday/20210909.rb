# Leetcode: 764. Largest Plus Sign.
# https://leetcode.com/problems/largest-plus-sign/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/637/week-2-september-8th-september-14th/3969/
# @param {Integer} n
# @param {Integer[][]} mines
# @return {Integer}
def order_of_largest_plus_sign(n, mines)
  # https://leetcode.com/problems/largest-plus-sign/solution/
  banned = Array.new(n).map{ Array.new(n)}
  dp = Array.new(n).map{ Array.new(n,0)}
  mines.each{|(r,c)| banned[r][c] = true}
  ans = 0
  (0...n).each do |r|
    count = 0
    (0...n).each do |c|
      count = banned[r][c] ? 0 : count + 1
      dp[r][c] = count
    end
    count = 0
    (0...n).reverse_each do |c|
      count = banned[r][c] ? 0 : count + 1
      dp[r][c] = count if count < dp[r][c]
    end
  end
  (0...n).each do |c|
    count = 0
    (0...n).each do |r|
      count = banned[r][c] ? 0 : count + 1
      dp[r][c] = count if count < dp[r][c]
    end
    count = 0
    (0...n).reverse_each do |r|
      count = banned[r][c] ? 0 : count + 1
      dp[r][c] = count if count < dp[r][c]
      ans = dp[r][c] if dp[r][c] > ans
    end
  end
  ans
end
