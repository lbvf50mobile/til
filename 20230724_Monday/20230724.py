# Leetcode: 50. Pow(x, n).
# https://leetcode.com/problems/powx-n/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 48 ms, faster than 51.90% of Python3 online submissions for Pow(x,
# n).
# Memory Usage: 16.3 MB, less than 41.10% of Python3 online submissions for
# Pow(x, n).
# 2023.07.24 Daily Challenge.
class Solution:
    # Copied from:
    # https://leetcode.com/problems/powx-n/solution/
    def binaryExp(self, x: float, n: int) -> float:
        # Base case, to stop recursive calls.
        if n == 0:
            return 1
       
        # Handle case where, n < 0.
        if n < 0:
            return 1.0 / self.binaryExp(x, -1 * n)
       
        # Perform Binary Exponentiation.
        # If 'n' is odd we perform Binary Exponentiation on 'n - 1' and multiply result with 'x'.
        if n % 2 == 1:
            return x * self.binaryExp(x * x, (n - 1) // 2)
        # Otherwise we calculate result by performing Binary Exponentiation on 'n'.
        else:
            return self.binaryExp(x * x, n // 2)

    def myPow(self, x: float, n: int) -> float:
        return self.binaryExp(x, n)
