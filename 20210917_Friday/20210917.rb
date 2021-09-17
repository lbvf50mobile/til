# Leetcode: 350. Intersection of Two Arrays II.
# https://leetcode.com/problems/intersection-of-two-arrays-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/638/week-3-september-15th-september-21st/3978/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  # Count how many times used each digit in the first array. There may be only elements from 0 till 1000, 1001 element is needed.
  counter = Array.new(1001,0)
  nums1.each{|el| counter[el] += 1}
  # Second step. Add element in answer array if it's counter is greater then zero.
  # Element must be in both arrays and number of repeats must be minmum from frepeats in first and second arrays.
  answer = []
  nums2.each{|el| 
    if counter[el] >  0
      answer.push(el)
      counter[el] -= 1
    end
  }
  answer
end
