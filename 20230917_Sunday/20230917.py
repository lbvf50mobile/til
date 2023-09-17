# Leetcode: 847. Shortest Path Visiting All Nodes.
# https://leetcode.com/problems/shortest-path-visiting-all-nodes/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 167 ms, faster than 63.69% of Python3 online submissions for Shortest
# Path Visiting All Nodes.
# Memory Usage: 21.3 MB, less than 55.69% of Python3 online submissions for
# Shortest Path Visiting All Nodes.
# 2023.09.17 Daily Challenge.
class Solution:
    # Copied from:
    # https://leetcode.com/problems/shortest-path-visiting-all-nodes/discuss/4053514/94.74-BFS-%2B-Bitmask
    def shortestPathLength(self, graph: List[List[int]]) -> int:
        n = len(graph)
        queue = deque([(1 << i, i, 0) for i in range(n)])
        visited = set((1 << i, i) for i in range(n))
        
        while queue:
            mask, node, dist = queue.popleft()
            if mask == (1 << n) - 1:
                return dist
            for neighbor in graph[node]:
                new_mask = mask | (1 << neighbor)
                if (new_mask, neighbor) not in visited:
                    visited.add((new_mask, neighbor))
                    queue.append((new_mask, neighbor, dist + 1))
