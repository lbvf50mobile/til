# Leetcode: 978. Longest Turbulent Subarray.
# https://leetcode.com/problems/longest-turbulent-subarray/
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/638/week-3-september-15th-september-21st/3976/
# @param {Integer[]} arr
# @return {Integer}
def max_turbulence_size(arr)
  # The algorithm is definately a slidding window.
  return 1 if arr.size == 1
  return 1 if arr.size == 2 && arr[0] == arr[2]
  ans = 1
  i,j = 0,0
  while i < arr.size && j < arr.size

  end
    
  ans
end
