# Leetcode: 2425. Bitwise XOR of All Pairings
# https://leetcode.com/problems/bitwise-xor-of-all-pairings/
# Leetcode's solution.
class Solution:
    def xorAllNums(self, nums1: List[int], nums2: List[int]) -> int:
        # Get lengths of arrays
        len1, len2 = len(nums1), len(nums2)

        # Dictionary to store frequency of each number
        freq = {}

        # Add frequencies for nums1 elements
        # Each element appears n2 times in final result
        for num in nums1:
            freq[num] = freq.get(num, 0) + len2

        # Add frequencies for nums2 elements
        # Each element appears n1 times in final result
        for num in nums2:
            freq[num] = freq.get(num, 0) + len1

        # XOR numbers that appear odd number of times
        ans = 0
        for num in freq:
            if freq[num] % 2:
                ans ^= num

        return ans
