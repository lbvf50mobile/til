# Approach 2: Approach 2: Bottom-Up Dynamic Programming.
# https://leetcode.com/problems/knight-dialer/solution/ 
class Solution:
    def knightDialer(self, n: int) -> int:
        jumps = [
            [4, 6],
            [6, 8],
            [7, 9],
            [4, 8],
            [3, 9, 0],
            [],
            [1, 7, 0],
            [2, 6],
            [1, 3],
            [2, 4]
        ]
        
        MOD = 10 ** 9 + 7
        dp = [[0] * 10 for _ in range(n + 1)]
        for square in range(10):
            dp[0][square] = 1

        for remain in range(1, n):
            for square in range(10):
                ans = 0
                for next_square in jumps[square]:
                    ans = (ans + dp[remain - 1][next_square]) % MOD
                
                dp[remain][square] = ans

        ans = 0
        for square in range(10):
            ans = (ans + dp[n - 1][square]) % MOD
        
        return ans
