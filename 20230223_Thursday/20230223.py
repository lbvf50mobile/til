# Leetcode: 502. IPO.
# https://leetcode.com/problems/ipo/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1102 ms, faster than 48.08% of Python3 online submissions for IPO.
# Memory Usage: 38.9 MB, less than 42.66% of Python3 online submissions for IPO.
# 2023.02.23 Daily Challenge.
# Copied from: 
# https://leetcode.com/problems/ipo/solution/
class Solution:
    def findMaximizedCapital(self, k: int, w: int, profits: List[int],
                             capital: List[int]) -> int:
        n = len(profits)
        projects = list(zip(capital, profits))
        projects.sort()
        # heapq is a min heap, but we need a max heap
        # so we will store negated elements
        q = []
        ptr = 0
        for i in range(k):
            while ptr < n and projects[ptr][0] <= w:
                # push a negated element
                heappush(q, -projects[ptr][1])
                ptr += 1
            if not q:
                break
            # pop a negated element
            w += -heappop(q)
        return w
