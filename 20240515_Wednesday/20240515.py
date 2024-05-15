# Leetcode: 2812. Find the Safest Path in a Grid.
# https://leetcode.com/problems/find-the-safest-path-in-a-grid/
# = = = = = = = = = = = = = =
# Accpeted.
# Thanks God, Jesus Chisrt!
# = = = = = = = = = = = = = =
# Runtime: 3925 ms, faster than 53.43% of Python3 online submissions for Find
# the Safest Path in a Grid.
# Memory Usage: 25.8 MB, less than 93.15% of Python3 online submissions for Find
# the Safest Path in a Grid.
# 2024.05.15 Daily Challenge.

class Solution:
    # Copied from the Leetcode's solution.

    # Directions for moving to neighboring cells: right, left, down, up
    dir = [(0, 1), (0, -1), (1, 0), (-1, 0)]

    def maximumSafenessFactor(self, grid: List[List[int]]) -> int:
        n = len(grid)

        multi_source_queue = deque()
        # Mark thieves as 0 and empty cells as -1, and push thieves to the queue
        for i in range(n):
            for j in range(n):
                if grid[i][j] == 1:
                    # Push thief coordinates to the queue
                    multi_source_queue.append((i, j))
                    # Mark thief cell with 0
                    grid[i][j] = 0
                else:
                    # Mark empty cell with -1
                    grid[i][j] = -1

        # Calculate safeness factor for each cell using BFS
        while multi_source_queue:
            size = len(multi_source_queue)
            while size > 0:
                curr = multi_source_queue.popleft()
                # Check neighboring cells
                for d in self.dir:
                    di, dj = curr[0] + d[0], curr[1] + d[1]
                    val = grid[curr[0]][curr[1]]
                    # Check if the cell is valid and unvisited
                    if self.isValidCell(grid, di, dj) and grid[di][dj] == -1:
                        # Update safeness factor and push to the queue
                        grid[di][dj] = val + 1
                        multi_source_queue.append((di, dj))
                size -= 1
        
        # Priority queue to prioritize cells with higher safeness factor
        pq = [[-grid[0][0], 0, 0]] # [maximum_safeness_till_now, x-coordinate, y-coordinate]
        grid[0][0] = -1 # Mark the source cell as visited

        # BFS to find the path with maximum safeness factor
        while pq:
            safeness, i, j = heapq.heappop(pq)
            
            # If reached the destination, return safeness factor
            if i == n - 1 and j == n - 1:
                return -safeness
            
            # Check neighboring cells
            for d in self.dir:
                di, dj = i + d[0], j + d[1]
                # Check if the neighboring cell is valid and unvisited
                if self.isValidCell(grid, di, dj) and grid[di][dj] != -1:
                    heapq.heappush(pq, [-min(-safeness, grid[di][dj]), di, dj])
                    grid[di][dj] = -1

        return -1
    
    # Check if a given cell lies within the grid
    def isValidCell(self, grid, i, j) -> bool:
        n = len(grid)
        return 0 <= i < n and 0 <= j < n
