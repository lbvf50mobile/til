# https://leetcode.com/problems/minimum-number-of-operations-to-make-array-xor-equal-to-k/solution/ 
class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        final_xor = 0
        for n in nums:
            final_xor = final_xor ^ n

        return bin(final_xor ^ k).count('1')
