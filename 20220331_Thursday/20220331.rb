# Leetcode: 410. Split Array Largest Sum.
# https://leetcode.com/problems/split-array-largest-sum/
# @param {Integer[]} nums
# @param {Integer} m
# @return {Integer}
def split_array(nums, m)
  return nums.sum if 1 == m
  # Based on: https://leetcode.com/problems/split-array-largest-sum/discuss/1899733/Python-Binary-Search-Solution
  @nums, @m, = nums, m
  l, h = 0, @nums.sum
  ans = -1
  while l < h
    mid = l + (h-l)/2
    if check(mid)
      ans = mid
      h = mid - 1
    else
      l = mid + 1
    end
  end
  ans
end

def check(mid)
  sum,count = 0, 1
  @nums.each do |el|
    if el + sum <= mid
      sum += el
    else
      count += 1
      return false if count > @m || el > mid
      sum = el
    end
  end
  true
end
