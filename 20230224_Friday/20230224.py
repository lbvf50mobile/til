# Leetcode: 1675. Minimize Deviation in Array.
# https://leetcode.com/problems/minimize-deviation-in-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 3485 ms, faster than 100.00% of Python online submissions for Minimize Deviation in Array.
# Memory Usage: 24.2 MB, less than 100.00% of Python online submissions for Minimize Deviation in Array.
# 2023.02.24 Daily Challenge.
# Copied from:
# https://leetcode.com/problems/minimize-deviation-in-array/discuss/952857/JavaC%2B%2BPython-Priority-Queue
class Solution(object):
    def minimumDeviation(self, A):
        pq = []
        for a in A:
            heapq.heappush(pq, [a / (a & -a), a])
        res = float('inf')
        ma = max(a for a, a0 in pq)
        while len(pq) == len(A):
            a, a0 = heapq.heappop(pq)
            res = min(res, ma - a)
            if a % 2 == 1 or a < a0:
                ma = max(ma, a * 2)
                heapq.heappush(pq, [a * 2, a0])
        return res
