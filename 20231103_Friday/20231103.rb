# Leetcode: 1441. Build an Array With Stack Operations.
# https://leetcode.com/problems/build-an-array-with-stack-operations/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 56 ms, faster than 100.00% of Ruby online submissions for Build an
# Array With Stack Operations.
# Memory Usage: 211.4 MB, less than 100.00% of Ruby online submissions for Build
# an Array With Stack Operations.
# 2023.11.03 Daily Challenge.
# @param {Integer[]} target
# @param {Integer} n
# @return {String[]}
def build_array(target, n)
  # Based on the Leetcode's solution:
  # https://leetcode.com/problems/build-an-array-with-stack-operations/solution/
  ans = []
  i = 0
  target.each do |num|
    while i < num - 1
      ans.push("Push")
      ans.push("Pop")
      i += 1
    end
    ans.push("Push")
    i += 1
  end
  return ans
end
