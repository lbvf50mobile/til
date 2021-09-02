# Leetcode: 565. Array Nesting.
# https://leetcode.com/problems/array-nesting/
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/636/week-1-september-1st-september-7th/3960/
# @param {Integer[]} nums
# @return {Integer}
def array_nesting(nums)
  # https://leetcode.com/problems/array-nesting/solution/
  # TLE.
  ans = 0
  (0...nums.size).each do |i|
    count = 0
    j = nums[i]
    while true
      j = nums[j]
      count +=1
      break if j == nums[i]
    end
    ans = count if count > ans
  end
  ans
end
