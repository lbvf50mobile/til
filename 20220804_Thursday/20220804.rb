# Leetcode: 858. Mirror Reflection.
# https://leetcode.com/problems/mirror-reflection/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 161 ms, faster than 100.00% of Ruby online submissions for Mirror Reflection.
# Memory Usage: 210.8 MB, less than 100.00% of Ruby online submissions for Mirror Reflection.
# @param {Integer} p
# @param {Integer} q
# @return {Integer}
def mirror_reflection(pe, q)
  # Based on:
  # https://leetcode.com/problems/mirror-reflection/discuss/2376191/C%2B%2B-Java-Python-or-Faster-then-100-or-Full-explanations-or
  while 0 == pe%2 && 0 == q%2
    pe /= 2; q /=2
  end
  return 1 - (pe%2) + (q%2)
end
