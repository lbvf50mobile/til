# Leetcode: 1424. Diagonal Traverse II.
# https://leetcode.com/problems/diagonal-traverse-ii
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 778 ms, faster than 75.98% of Python3 online submissions for
# Diagonal Traverse II.
# Memory Usage: 41.3 MB, less than 25.18% of Python3 online submissions for
# Diagonal Traverse II.
# 2023.11.22 Daily Challenge.
class Solution:
    # Copied from:
    # https://leetcode.com/problems/diagonal-traverse-ii/solution/
    def findDiagonalOrder(self, nums: List[List[int]]) -> List[int]:
        groups = defaultdict(list)
        for row in range(len(nums) - 1, -1, -1):
            for col in range(len(nums[row])):
                diagonal = row + col
                groups[diagonal].append(nums[row][col])
                
        ans = []
        curr = 0
        
        while curr in groups:
            ans.extend(groups[curr])
            curr += 1

        return ans
