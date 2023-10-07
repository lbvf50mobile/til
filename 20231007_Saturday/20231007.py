# https://leetcode.com/problems/build-array-where-you-can-find-the-maximum-exactly-k-comparisons/solution/
class Solution:
    def numOfArrays(self, n: int, m: int, k: int) -> int:    
        dp = [[[0] * (k + 1) for _ in range(m + 1)] for __ in range(n + 1)]
        MOD = 10 ** 9 + 7
        
        for num in range(len(dp[0])):
            dp[n][num][0] = 1
        
        for i in range(n - 1, -1, -1):
            for max_so_far in range(m, -1, -1):
                for remain in range(k + 1):
                    ans = (max_so_far * dp[i + 1][max_so_far][remain]) % MOD
    
                    if remain > 0:
                        for num in range(max_so_far + 1, m + 1):
                            ans = (ans + dp[i + 1][num][remain - 1]) % MOD
                        
                    dp[i][max_so_far][remain] = ans

        return dp[0][0][k]
