# Leetcode: 1361. Validate Binary Tree Nodes.
# https://leetcode.com/problems/validate-binary-tree-nodes
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 253 ms, faster than 95.51% of Python3 online submissions for Validate
# Binary Tree Nodes.
# Memory Usage: 20 MB, less than 37.13% of Python3 online submissions for
# Validate Binary Tree Nodes.
# 2023.10.17 Daily Challenge.
class Solution:
    def validateBinaryTreeNodes(self, n: int, leftChild: List[int], rightChild: List[int]) -> bool:
        def find_root():
            children = set(leftChild) | set(rightChild)
            
            for i in range(n):
                if i not in children:
                    return i
                
            return -1
        
        root = find_root()
        if root == -1:
            return False
        
        seen = {root}
        stack = [root]
        while stack:
            node = stack.pop()
            for child in [leftChild[node], rightChild[node]]:
                if child != -1:
                    if child in seen:
                        return False
                    
                    stack.append(child)
                    seen.add(child)
        
        return len(seen) == n
