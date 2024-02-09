# https://leetcode.com/problems/largest-divisible-subset/discuss/684738/Python-Short-DP-with-O(n2)-explained-(update)
class Solution:
    def largestDivisibleSubset(self, nums):
        if len(nums) == 0: return []
        nums.sort()
        sol = [[num] for num in nums]
        for i in range(len(nums)):
            for j in range(i):
                if nums[i] % nums[j] == 0 and len(sol[i]) < len(sol[j]) + 1:
                    sol[i] = sol[j] + [nums[i]]
        return max(sol, key=len)
