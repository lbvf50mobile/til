# Leetcode: 834. Sum of Distances in Tree. 
# https://leetcode.com/problems/sum-of-distances-in-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 807 ms, faster than 65.31% of Python3 online submissions for Sum of
# Distances in Tree.
# Memory Usage: 45.9 MB, less than 39.02% of Python3 online submissions for
# Sum of Distances in Tree.
# 2024.04.28 Daily Challenge.

class Solution:
    # Copied from:
    # https://leetcode.com/problems/sum-of-distances-in-tree/discuss/1443467/Python-2-dfs-solution-explained
    def sumOfDistancesInTree(self, N, edges):
        G = defaultdict(set)
        for i, j in edges:
            G[i].add(j)
            G[j].add(i)
        
        def dfs(node, parent, depth):
            ans = 1
            for neib in G[node]:
                if neib != parent:
                    ans += dfs(neib, node, depth + 1)
            weights[node] = ans
            depths[node] = depth
            return ans
        
        def dfs2(node, parent, w):
            ans[node] = w
            for neib in G[node]:
                if neib != parent:
                    dfs2(neib, node, w + N - 2*weights[neib])
        
        weights, depths, ans = [0]*N, [0]*N, [0]*N
        dfs(0, -1, 0)
        dfs2(0, -1, sum(depths))
        
        return ans
