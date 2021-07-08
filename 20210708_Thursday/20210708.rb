# Leetcode: 718. Maximum Length of Repeated Subarray.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/609/week-2-july-8th-july-14th/3807/
# TLE. When all zeros.
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def find_length(nums1, nums2)
  @dp = Array.new(nums1.size).map{ Array.new(nums2.size)}    
  @s1,@s2 = nums1.size, nums2.size
  @n1,@n2 = nums1, nums2
  rec(0,0)
end

def rec(i,j)
  return 0 if i >= @s1
  return 0 if j >= @s2
  return @dp[i][j] if @dp[i][j]
  si,sj = i,j
  count = 0
  while i < @s1 && j < @s2 && @n1[i] == @n2[j]
    count += 1
    i += 1
    j += 1
  end
  count1 = rec(i+1, j)
  count2 = rec(i, j+1)
  count3 = rec(i+1,j+1)
  count4 = rec(si+1,sj)
  count5 = rec(si,sj+1)
  count6 = rec(si+1,sj+1)
  ans = [count,count1,count2,count3,count4,count5,count6].max
  @dp[si][sj] = ans
end
