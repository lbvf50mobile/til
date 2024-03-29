# Leetcode: 2390. Removing Stars From a String.
# https://leetcode.com/problems/removing-stars-from-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 813 ms, faster than 60.00% of Ruby online submissions for Removing
# Stars From a String.
# Memory Usage: 224.8 MB, less than 40.00% of Ruby online submissions for
# Removing Stars From a String.
# 2023.04.11 Daily Challenge.
# @param {String} s
# @return {String}
def remove_stars(s)
  # It is a simple stack task.
  # Each start is a pop form the stack.
  stack = []
  s.chars.each do |x|
    if ?* == x
      stack.pop
    else
      stack.push(x)
    end
  end
  stack.join
end
