# Leetcode: 4. Median of Two Sorted Arrays.
# https://leetcode.com/problems/median-of-two-sorted-arrays/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 75 ms, faster than 71.71% of Ruby online submissions for Median of
# Two Sorted Arrays.
# Memory Usage: 212.4 MB, less than 83.41% of Ruby online submissions for Median
# of Two Sorted Arrays.
# 2023.09.21 Daily Challenge.
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  # Based on:
  # https://leetcode.com/problems/median-of-two-sorted-arrays/solution/
  @n1, @n2 = nums1, nums2
  @m, @n = @n1.size, @n2.size
  @p1, @p2 = 0, 0
  if (@m+@n).even?
    ((@m+@n)/2 - 1).times{ getmin()}
    return (getmin() + getmin()).fdiv(2)
  else
    ((@m+@n)/2).times{ getmin()}
    return getmin()
  end
end

def getmin()
  ans = 0
  if @p1 < @m && @p2 < @n
    if @n1[@p1] < @n2[@p2]
      ans = @n1[@p1]
      @p1 += 1
    else
      ans = @n2[@p2]
      @p2 += 1
    end
  elsif @n == @p2
    ans = @n1[@p1]
    @p1 += 1
  else
    ans = @n2[@p2]
    @p2 += 1
  end
  return ans
end
