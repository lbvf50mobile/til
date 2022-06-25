# Leetcode: 665. Non-decreasing Array.
# https://leetcode.com/problems/non-decreasing-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 161 ms, faster than 25.00% of Ruby online submissions for Non-decreasing Array.
# Memory Usage: 213.2 MB, less than 50.00% of Ruby online submissions for Non-decreasing Array.
# @param {Integer[]} nums
# @return {Boolean}
# fixed Error: [-1,4,2,3]
# fixed Error: [5,7,1,8]
def check_possibility(nums)
  # Fine where it is broken.
  j = nil
  a = nums
  (1...a.size).each do |i|
    if a[i-1] > a[i]
      j = i
      break
    end
  end
  return true if !j
  # Now test is it possible to remove j or j-1.
  remove(a,j) || remove(a,j-1)
end

def remove(a,j)
  (1...a.size).each do |i|
    if i != j && i != (j+1)
      return false if a[i-1] > a[i]
    end
    next if i == j
    if j + 1 == i
      next if 1 == i
      return false if a[i-2] > a[i]
    end
  end
  return true
end
