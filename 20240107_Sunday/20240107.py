# https://leetcode.com/problems/arithmetic-slices-ii-subsequence/discuss/1455137/Python-short-dp-explained
class Solution:
    def numberOfArithmeticSlices(self, A):
        total, n = 0, len(A)
        dp = [Counter() for item in A]
        for i in range(n):
            for j in range(i):
                dp[i][A[i] - A[j]] += (dp[j][A[i] - A[j]] + 1)      
            total += sum(dp[i].values())
          
        return total - (n-1)*n//2   
