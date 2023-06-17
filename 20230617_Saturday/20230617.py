# Leetcode: 1187. Make Array Strictly Increasing. 
# https://leetcode.com/problems/make-array-strictly-increasing/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 673 ms, faster than 79.23% of Python3 online submissions for Make
# Array Strictly Increasing.
# Memory Usage: 16.6 MB, less than 83.85% of Python3 online submissions for Make
# Array Strictly Increasing.
# 2023.06.17 Daily Challenge.
class Solution:
    def makeArrayIncreasing(self, arr1: List[int], arr2: List[int]) -> int:
      # Copied from:
      # https://leetcode.com/problems/make-array-strictly-increasing/solution/
        dp = {-1: 0}
        arr2.sort()
        n = len(arr2)
        
        for i in range(len(arr1)):
            new_dp = collections.defaultdict(lambda: float('inf'))
            for prev in dp:
                if arr1[i] > prev:
                    new_dp[arr1[i]] = min(new_dp[arr1[i]], dp[prev])
                idx = bisect.bisect_right(arr2, prev)
                if idx < n:
                    new_dp[arr2[idx]] = min(new_dp[arr2[idx]], 1 + dp[prev])
            dp = new_dp

        return min(dp.values()) if dp else -1
