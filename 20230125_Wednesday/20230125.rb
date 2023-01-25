# Leetcode: 2359. Find Closest Node to Given Two Nodes.
# https://leetcode.com/problems/find-closest-node-to-given-two-nodes/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 296 ms, faster than 100.00% of Ruby online submissions for Find Closest Node to Given Two Nodes.
# Memory Usage: 231.5 MB, less than 100.00% of Ruby online submissions for Find Closest Node to Given Two Nodes.
# 2023.01.25 Daily Challenge.
# @param {Integer[]} edges
# @param {Integer} node1
# @param {Integer} node2
# @return {Integer}
def closest_meeting_node(edges, node1, node2)
  v1 = [false] * edges.size
  d1 = [0] * edges.size
  q = [[node1,0]]
  v1[node1] = true
  while ! q.empty?
    x,l = q.shift
    d1[x] = l
    y = edges[x]
    if -1 != y && (!v1[y])
      q.push([y,l+1])
      v1[y] = true
    end
  end
  v2 = [false] * edges.size
  d2 = [0] * edges.size
  q = [[node2,0]]
  v2[node2] = true
  while ! q.empty?
    x,l = q.shift
    d2[x] = l
    y = edges[x]
    if -1 != y  && (!v2[y])
      q.push([y,l+1])
      v2[y]= true
    end
  end
  answer = -1
  min = edges.size * 10
  edges.size.times do |i|
    if v1[i] && v2[i]
      tmp = [d1[i],d2[i]].max # Error fixed here! Was min.
      if tmp < min
        min = tmp
        answer = i
      end
    end
  end
  return answer
end
