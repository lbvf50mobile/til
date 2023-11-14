# Leetcode: 1930. Unique Length-3 Palindromic Subsequences.
# https://leetcode.com/problems/unique-length-3-palindromic-subsequences
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 757 ms, faster than 46.61% of Python3 online submissions for Unique
# Length-3 Palindromic Subsequences.
# Memory Usage: 17.3 MB, less than 43.97% of Python3 online submissions for
# Unique Length-3 Palindromic Subsequences
# 2023.11.14 Daily Challenge.
class Solution:
    # Copied from:
    # https://leetcode.com/problems/unique-length-3-palindromic-subsequences/solution/
    def countPalindromicSubsequence(self, s: str) -> int:
        first = [-1] * 26
        last = [-1] * 26
        
        for i in range(len(s)):
            curr = ord(s[i]) - ord("a")
            if first[curr] == -1:
                first[curr] = i
            
            last[curr] = i
        
        ans = 0
        for i in range(26):
            if first[i] == -1:
                continue
                
            between = set()
            for j in range(first[i] + 1, last[i]):
                between.add(s[j])
            
            ans += len(between)

        return ans
