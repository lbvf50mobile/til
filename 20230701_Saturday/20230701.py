# Leetcode: 2305. Fair Distribution of Cookies.
# https://leetcode.com/problems/fair-distribution-of-cookies/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1594 ms, faster than 36.20% of Python3 online submissions for Fair
# Distribution of Cookies.
# Memory Usage: 16.5 MB, less than 10.82% of Python3 online submissions for Fair
# Distribution of Cookies.
# 2023.07.01 Daily Challenge.
class Solution:
    def distributeCookies(self, cookies: List[int], k: int) -> int:
        # Copied from:
        # https://leetcode.com/problems/fair-distribution-of-cookies/solution/
        cur = [0] * k
        n = len(cookies)

        def dfs(i, zero_count):
            # If there are not enough cookies remaining, return `float('inf')` 
            # as it leads to an invalid distribution.
            if n - i < zero_count:
                return float('inf')
            
            # After distributing all cookies, return the unfairness of this
            # distribution.
            if i == n:
                return max(cur)
            
            # Try to distribute the i-th cookie to each child, and update answer
            # as the minimum unfairness in these distributions.
            answer = float('inf')
            for j in range(k):
                zero_count -= int(cur[j] == 0)
                cur[j] += cookies[i]
                
                # Recursively distribute the next cookie.
                answer = min(answer, dfs(i + 1, zero_count))
                
                cur[j] -= cookies[i]
                zero_count += int(cur[j] == 0)
            
            return answer
        
        return dfs(0, k)
