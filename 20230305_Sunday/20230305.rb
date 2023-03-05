# Leetcode: 1345. Jump Game IV.
# https://leetcode.com/problems/jump-game-iv/
# @param {Integer[]} arr
# @return {Integer}
# TLE.
def min_jumps(arr)
  # Based on:
  # https://leetcode.com/problems/jump-game-iv/solution/
  n = arr.size
  return 0 if n <= 1
  g = {}
  n.times do |i|
    g[arr[i]] ||= []
    g[arr[i]].push(i)
  end
  q = [0]
  v = {}
  v[0] = true
  step = 0
  while !q.empty?
    nq = []
    q.each do |node|
      # Check if end is reached.
      return step if n - 1 == node
      # Move adjacency list.
      g[arr[node]].each do |child|
        if ! v[child]
          v[child] = true
          nq.push(child)
        end
      end
      # Clear.
      g[arr[node]].clear
      # Near.
      [node-1,node+1].each do |child|
        if child.between?(0,n-1)
          v[child] = true
          nq.push(child)
        end
      end
    end
    q = nq
    step += 1
  end
  return -1
end
