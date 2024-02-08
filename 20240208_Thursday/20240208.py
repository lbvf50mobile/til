# Leetcode: 279. Perfect Squares.
# https://leetcode.com/problems/perfect-squares/?envType=daily-question&envId=2024-02-08
# Copied from: 
# https://leetcode.com/problems/perfect-squares/discuss/707526/Python-Fastest-O(sqrt(n))-solution-with-math-explanied.
class Solution:
    def numSquares(self, n):
        if int(sqrt(n))**2 == n: return 1
        for j in range(int(sqrt(n)) + 1):
            if int(sqrt(n - j*j))**2 == n - j*j: return 2
            
        while n % 4 == 0: 
            n >>= 2
        if n % 8 == 7: return 4
        return 3
