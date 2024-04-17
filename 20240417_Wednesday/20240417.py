# Leetcode: 988. Smallest String Starting From Leaf.
# https://leetcode.com/problems/smallest-string-starting-from-leaf/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 39 ms, faster than 79.79% of Python3 online submissions for
# Smallest String Starting From Leaf.
# Memory Usage: 17.7 MB, less than 88.96% of Python3 online submissions for
# Smallest String Starting From Leaf.
# Copied from:
# https://leetcode.com/problems/smallest-string-starting-from-leaf/solution/
class Solution:
    def smallestFromLeaf(self, root: Optional[TreeNode]) -> str:
        self.smallest_string = ""
        self.dfs(root, "")
        return self.smallest_string

    # Helper function to find the lexicographically smallest string
    def dfs(self, root, current_string):
        # If the current node is NULL, return
        if not root:
            return

        # Construct the current string by appending 
        # the character corresponding to the node's value
        current_string = chr(root.val + ord('a')) + current_string

        # If the current node is a leaf node
        if not root.left and not root.right:
            # If the current string is smaller than the result 
            # or if the result is empty
            if not self.smallest_string or self.smallest_string > current_string:
                self.smallest_string = current_string

        # Recursively traverse the left subtree
        if root.left:
            self.dfs(root.left, current_string)
        
        # Recursively traverse the right subtree
        if root.right:
            self.dfs(root.right, current_string)
