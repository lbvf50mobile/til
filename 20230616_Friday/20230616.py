# Leetcode: 1569. Number of Ways to Reorder Array to Get Same BST.
# https://leetcode.com/problems/number-of-ways-to-reorder-array-to-get-same-bst/
class Solution:
    def numOfWays(self, nums: List[int]) -> int:
      # Copied from:
      # https://leetcode.com/problems/number-of-ways-to-reorder-array-to-get-same-bst/solution/
        mod = 10 ** 9 + 7
        
        def dfs(nums):
            m = len(nums)
            if m < 3: 
                return 1
            left_nodes = [a for a in nums if a < nums[0]]
            right_nodes = [a for a in nums if a > nums[0]]
            return dfs(left_nodes) * dfs(right_nodes) * comb(m - 1, len(left_nodes)) % mod
        
        return (dfs(nums) - 1) % mod
