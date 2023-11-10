# Leetcode: 1743. Restore the Array From Adjacent Pairs.
# https://leetcode.com/problems/restore-the-array-from-adjacent-pairs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 282 ms, faster than 100.00% of Ruby online submissions for Restore
# the Array From Adjacent Pairs.
# Memory Usage: 238.5 MB, less than 100.00% of Ruby online submissions for
# Restore the Array From Adjacent Pairs.
# 2023.11.10 Daily Challenge.
# @param {Integer[][]} adjacent_pairs
# @return {Integer[]}
def restore_array(adjacent_pairs)
  # 1. Creat adjacency list.
  al = {}
  adjacent_pairs.each do |a,b|
    al[a] ||= []
    al[b] ||= []
    al[a].push(b)
    al[b].push(a)
  end
  # 2. Prepeare queue for DFS.
  # 2.1. Prepare visited map.
  v = {}
  ans = []
  # 2.2. Need a tail (or one of the ends) for a start position.
  start = 0 
  al.each do |i,v|
    if 1 == v.size
      start = i
      break
    end
  end
  v[start] = true
  q = [start]
  # 3. Start mail loop.
  while ! q.empty?
    # 4. Add element to answer.
    e = q.pop
    ans.push(e)
    # 5. Push element if they are not visited.
    al[e].each do |nxt|
      next if v[nxt]
      v[nxt] = true
      q.push(nxt)
    end
  end
  return ans
end
