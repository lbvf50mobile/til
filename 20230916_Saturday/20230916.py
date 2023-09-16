# Leetcode: 1631. Path With Minimum Effort.
# https://leetcode.com/problems/path-with-minimum-effort/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 6073 ms, faster than 5.04% of Python3 online submissions for Path
# With Minimum Effort.
# Memory Usage: 27.3 MB, less than 5.05% of Python3 online submissions for Path
# With Minimum Effort.
# 2023.09.16 Daily Challenge.
class Solution:
    def __init__(self):
        self.vis = [[0] * 105 for _ in range(105)]
        self.dir = [(1, 0), (-1, 0), (0, -1), (0, 1)]

    def ok(self, x, y, mid, heights):
        if not self.vis[x][y]:
            self.vis[x][y] = 1
            n = len(heights)
            m = len(heights[0])

            for i in range(4):
                X = x + self.dir[i][0]
                Y = y + self.dir[i][1]

                if X < 0 or X >= n or Y < 0 or Y >= m:
                    continue

                if abs(heights[x][y] - heights[X][Y]) <= mid:
                    self.ok(X, Y, mid, heights)

    def minimumEffortPath(self, heights):
        l = 0
        r = 1000000002
        n = len(heights)
        m = len(heights[0])

        while l < r:
            mid = (l + r) // 2
            self.vis = [[0] * 105 for _ in range(105)]
            self.ok(0, 0, mid, heights)

            if self.vis[n - 1][m - 1] == 1:
                r = mid
            else:
                l = mid + 1

        return l
