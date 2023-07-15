# Leetcode: 1751. Maximum Number of Events That Can Be Attended II.
# https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 808 ms, faster than 94.07% of Python3 online submissions for Maximum
# Number of Events That Can Be Attended II.
# Memory Usage: 160.1 MB, less than 45.93% of Python3 online submissions for
# Maximum Number of Events That Can Be Attended II.
class Solution:
    def maxValue(self, events: List[List[int]], k: int) -> int:        
    # Copied from:
    # https://leetcode.com/problems/maximum-number-of-events-that-can-be-attended-ii/solution/
        events.sort()
        n = len(events)
        starts = [start for start, end, value in events]
        dp = [[-1] * n for _ in range(k + 1)]
        
        def dfs(cur_index, count):
            if count == 0 or cur_index == n:
                return 0
            if dp[count][cur_index] != -1:
                return dp[count][cur_index]

            # Find the nearest available event after attending event 0.

            next_index = bisect_right(starts, events[cur_index][1])
            dp[count][cur_index] = max(dfs(cur_index + 1, count), events[cur_index][2] + dfs(next_index, count - 1))
            return dp[count][cur_index]
        
        return dfs(0, k)
