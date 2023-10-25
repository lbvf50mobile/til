# https://leetcode.com/problems/k-th-symbol-in-grammar/solution/
class Solution:
    def depthFirstSearch(self, n: int, k: int, rootVal: int) -> int:
        if n == 1:
            return rootVal

        totalNodes = 2 ** (n - 1)

        # Target node will be present in the right half sub-tree of the current root node.
        if k > (totalNodes / 2):
            nextRootVal = 1 if rootVal == 0 else 0
            return self.depthFirstSearch(n - 1, k - (totalNodes / 2), nextRootVal)
        # Otherwise, the target node is in the left sub-tree of the current root node.
        else:
            nextRootVal = 0 if rootVal == 0 else 1
            return self.depthFirstSearch(n - 1, k, nextRootVal)

    def kthGrammar(self, n: int, k: int) -> int:
        return self.depthFirstSearch(n, k, 0)
