# Leetcode: 435. Non-overlapping Intervals.
# https://leetcode.com/problems/non-overlapping-intervals/
class Solution:
    def eraseOverlapIntervals(self, intervals: List[List[int]]) -> int:
        # Copied from:
        # https://leetcode.com/problems/non-overlapping-intervals/solution/
        intervals.sort(key = lambda x: x[1])
        ans = 0
        k = -inf
        
        for x, y in intervals:
            if x >= k:
                # Case 1
                k = y
            else:
                # Case 2
                ans += 1
        
        return ans
