# Leetcode: 1416. Restore The Array.
# https://leetcode.com/problems/restore-the-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2798 ms, faster than 8.22% of Python3 online submissions for Restore
# The Array.
# Memory Usage: 122.5 MB, less than 39.73% of Python3 online submissions for
# Restore The Array.
# Leetcode's soltuion.
class Solution:
    def numberOfArrays(self, s: str, k: int) -> int:
        m, n = len(s), len(str(k))
        mod = 10 ** 9 + 7   
        print(m,n,mod)
        dp = [0] * (m + 1)
        print(dp)
        
        # Number of possible splits for s[start ~ m-1].
        def dfs(start):
            print(start)
            # If we have already updated dp[start], return it.
            if dp[start]:
                return dp[start]
            
            # There is only 1 split for an empty string.
            if start == m:
                return 1
            
            # Number can't have leading zeros.
            if s[start] == '0':
                return 0
            
            # For all possible starting number, add the number of arrays 
            # that can be printed as the remaining string to count.
            count = 0
            for end in range(start, m):
                curr_number = s[start: end + 1]
                if int(curr_number) > k:
                    break
                count += dfs(end + 1)
                
            # Update dp[start] so we don't recalculate it later.
            dp[start] = count % mod
            return count
        
        return dfs(0) % mod
