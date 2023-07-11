# Leetcode: 863. All Nodes Distance K in Binary Tree.
# https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 59 ms, faster than 29.49% of Python3 online submissions for All Nodes
# Distance K in Binary Tree.
# Memory Usage: 16.9 MB, less than 35.25% of Python3 online submissions for All
# Nodes Distance K in Binary Tree.
# 2023.07.11 Daily Challenge.
class Solution:
    # Copied from:
    # https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/solution/
    def distanceK(self, root: TreeNode, target: TreeNode, k: int) -> List[int]:
        # Recursively add a parent pointer to each node.
        def add_parent(cur, parent):
            if cur:
                cur.parent = parent
                add_parent(cur.left, cur)
                add_parent(cur.right, cur) 
        add_parent(root, None)
        
        answer = []
        visited = set()
        def dfs(cur, distance):
            if not cur or cur in visited:
                return
            visited.add(cur)
            if distance == 0:
                answer.append(cur.val)
                return
            dfs(cur.parent, distance - 1)
            dfs(cur.left, distance - 1)
            dfs(cur.right, distance - 1)
            
        dfs(target, k)
        
        return answer
