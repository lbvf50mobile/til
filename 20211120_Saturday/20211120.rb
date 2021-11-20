# Leetcode: 540. Single Element in a Sorted Array.
# https://leetcode.com/problems/single-element-in-a-sorted-array/
# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
  @n = nums
  return nums[0] if 1 == nums.size
  return nums[0] if nums[0] != nums[1]
  return nums[nums.size-1] if nums[nums.size - 1] != nums[nums.size - 2]
  l,r = 0, nums.size-1
  while l < r # Why strictly?
    mid = l + (l+r)/2
    return @n[mid] if check(mid)
    if mid.even?
      # EVEN.
      # No uniq yet. Start from even. 
      # Even, Odd.
      # a a b
      # 0 1 2
      # ^     
      if @n[mid] == @n[mid+1]
        l = mid + 2 # move right.
      else
        # Uniq happens. Finish at even.
        # Odd, Even.
        # b a a
        # 0 1 2
        #     ^ 
        r = mid - 2 # more left.
      end
    else
      # ODD.
      # No uniq yet. Start from even.
      # Even, Odd.
      # a a b
      # 0 1 2
      #   ^
      if @n[mid] == @n[mid-1]
        l = mid + 1 # move rigth.
      else
        # Uniq happens.
        # Odd, Even.
        # b a a
        # 0 1 2
        #   ^
        r = mid - 1 # move left.
      end
    end
  end
  return @n[l]
end

def check(i)
  (@n[i] != @n[i-1]) && (@n[i] != @n[i+1])
end

