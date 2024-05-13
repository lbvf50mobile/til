# Leetcode: 861. Score After Flipping Matrix.
# https://leetcode.com/problems/score-after-flipping-matrix/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 48 ms, faster than 14.66% of Python3 online submissions for Score
# After Flipping Matrix.
# Memory Usage: 16.6 MB, less than 18.53% of Python3 online submissions for
# Score After Flipping Matrix.
# 2024.05.13 Daily Challenge.

class Solution:
    # Copied from the Leetcode's solutions.
    def matrixScore(self, grid: List[List[int]]) -> int:
        m = len(grid)
        n = len(grid[0])

        # Set first column
        for i in range(m):
            if grid[i][0] == 0:
                # Flip row
                for j in range(n):
                    grid[i][j] = 1 - grid[i][j]  # Bitwise XOR for flip

        # Optimize columns except first column
        for j in range(1, n):
            count_zero = 0
            # Count zeros
            for i in range(m):
                if grid[i][j] == 0:
                    count_zero += 1
            # Flip the column if more zeros for better score
            if count_zero > m - count_zero:
                for i in range(m):
                    grid[i][j] ^= 1  # Bitwise XOR for flip

        # Calculate the final score considering bit positions
        score = 0
        for i in range(m):
            for j in range(n):
                # Left shift bit by place value of column to find column contribution
                columnScore = grid[i][j] << (n - j - 1)
                # Add contribution to score
                score += columnScore

        # Return final result
        return score
