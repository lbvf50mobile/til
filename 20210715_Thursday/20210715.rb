# Leetcode: Valid Triangle Number.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/610/week-3-july-15th-july-21st/3815/
# TLE.
# @param {Integer[]} nums
# @return {Integer}
def triangle_number(nums)
  return 0 if nums.size < 3
  nums.sort!
  @n = nums
  ans = 0
  (0...nums.size).each do |i|
    (i+1...nums.size).each do |j|
      sum = nums[i]+nums[j]
      ans += binary(sum,j+1)
    end
  end
  return ans
end

def binary(sum,k)
  l,r = k, @n.size - 1
  index = nil
  while l <= r
    mediana = l  + (r-l)/2
    if @n[mediana] < sum
      l = mediana + 1
      index = mediana
    else
      r = mediana  - 1
    end
  end
  return 0 if index.nil?
  index - k + 1
end

