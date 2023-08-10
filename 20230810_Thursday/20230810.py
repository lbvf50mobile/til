# https://leetcode.com/problems/search-in-rotated-sorted-array-ii/discuss/1891315/Python-or-binary-search
class Solution:
    def search(self, nums: List[int], target: int) -> bool:
        l = 0
        r = len(nums)-1
        while l<=r:
            m=(r+l)//2
            if target in [nums[m], nums[r], nums[l]]: return True
            elif nums[m]==nums[l] or nums[m]==nums[r]:
                r-=1
                l+=1
            elif nums[l]<=nums[m]:
                if nums[l]<target<nums[m]: r=m-1
                else: l=m+1
            else:
                if nums[m]<target<nums[r]: l=m+1
                else: r=m-1
        return False
