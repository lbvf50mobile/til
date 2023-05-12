# Leetcode: 2140. Solving Questions With Brainpower.
# https://leetcode.com/problems/solving-questions-with-brainpower/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 240 ms, faster than 50.00% of Ruby online submissions for Solving
# Questions With Brainpower.
# Memory Usage: 228.5 MB, less than 25.00% of Ruby online submissions for
# Solving Questions With Brainpower.
# 2023.05.12 Daily Challenge.
# @param {Integer[][]} questions
# @return {Integer}
def most_points(questions)
  # Based on: 
  # https://leetcode.com/problems/solving-questions-with-brainpower/solution/
  n = questions.size
  dp = Array.new(n, 0)
  dp[-1] = questions[-1][0]
  (0...n-1).reverse_each do |i|
    dp[i] = questions[i][0]
    skip = questions[i][1]
    if i + skip + 1 < n
      dp[i] += dp[i+skip+1]
    end
    dp[i] = [dp[i], dp[i+1]].max
  end
  return dp[0]
end
