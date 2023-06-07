# Leetcode: 1318. Minimum Flips to Make a OR b Equal to c.
# https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/
# Copied from:
# https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/solution/
class Solution:
    def minFlips(self, a: int, b: int, c: int) -> int:
        answer = 0
        while a or b or c:
            if c & 1:
                answer += 0 if ((a & 1) or (b & 1)) else 1
            else:
                answer += (a & 1) + (b & 1)
            a >>= 1
            b >>= 1
            c >>= 1
        return answer
