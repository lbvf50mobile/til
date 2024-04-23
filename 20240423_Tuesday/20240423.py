# Leetcode: 310. Minimum Height Trees.
# https://leetcode.com/problems/minimum-height-trees/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 435 ms, faster than 17.56% of Python online submissions for Minimum
# Height Trees.
# Memory Usage: 47.3 MB, less than 5.37% of Python online submissions for
# Minimum Height Trees.
# 2024.04.23 Daily Challenge.
# Copied from:
# https://leetcode.com/problems/minimum-height-trees/discuss/923071/Python-Find-diameter-using-2-dfs-explained
class Solution:
    def findMinHeightTrees(self, n, edges):
        def dfs_helper(start, n):
            self.dist, self.parent = [-1]*n, [-1]*n
            self.dist[start] = 0
            dfs(start)
            return self.dist.index(max(self.dist))
        
        def dfs(start):
            for neib in Graph[start]:
                if self.dist[neib] == -1:
                    self.dist[neib] = self.dist[start] + 1
                    self.parent[neib] = start
                    dfs(neib)
                    
        Graph = defaultdict(set)
        for a,b in edges:
            Graph[a].add(b)
            Graph[b].add(a)
        
        ind = dfs_helper(0,n)
        ind2 = dfs_helper(ind, n)
        
        path = []
        while ind2 != -1:
            path.append(ind2)           #backtracking to create path
            ind2 = self.parent[ind2]
            
        Q = len(path)
        return list(set([path[Q//2], path[(Q-1)//2]]))
