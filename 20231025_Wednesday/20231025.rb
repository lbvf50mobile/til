# Leetcode: 779. K-th Symbol in Grammar.
# https://leetcode.com/problems/k-th-symbol-in-grammar
# = = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = = =
# Runtime: 50 ms, faster than 100.00% of Ruby online submissions for K-th Symbol
# in Grammar.
# Memory Usage: 211 MB, less than 100.00% of Ruby online submissions for K-th
# Symbol in Grammar.
# 2023.10.25 Daily Challenge.
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def kth_grammar(n, k)
  # Based on:
  # https://leetcode.com/problems/k-th-symbol-in-grammar/solution/
  dfs(n,k,0)
end

def dfs(n,k,v)
  # v is value of a root.
  return v if 1 == n
  total = 2**(n-1)
  # Target node will be present in the right half sub-tree of the current root
  # node.
  if k > total/2
    nv = 0 == v ? 1 : 0
    return dfs(n-1, k - total/2, nv)
    # Otherwise, the target node is in the left sub-tree of the current root
    # node.
  else
    nv = 0 == v ? 0 : 1
    return dfs(n-1, k, nv)
  end
end
