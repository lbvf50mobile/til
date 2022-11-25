# Leetcode: 907. Sum of Subarray Minimums.
# https://leetcode.com/problems/sum-of-subarray-minimums/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 182 ms, faster than 100.00% of Ruby online submissions for Sum of Subarray Minimums.
# Memory Usage: 215.7 MB, less than 71.43% of Ruby online submissions for Sum of Subarray Minimums.
# 2022.11.25 Daily Challenge.
# @param {Integer[]} arr
# @return {Integer}
def sum_subarray_mins(arr)
  # Based on:
  # https://leetcode.com/problems/sum-of-subarray-minimums/solution/
  mod = 10**9 + 7
  stack = []
  sum = 0
  (0..arr.size).each do |i|
    # when `i` reaches the array lenght, it is an indication that
    # all the elements have been processed, and the remaining
    # elements in the stack should no be popped out.
    while (! stack.empty?) && (arr.size == i || arr[stack.last] >= arr[i])
      # Notice the sign ">=". This ensures that no contribution
      # is counted twice. right_boundary takes equal or smaller
      # elements into account while left_boundary takes only the
      # strictly smaller elements into account.
      mid = stack.pop()
      left_boundary = stack.empty? ? -1 : stack.last
      right_boundary = i

      # Count of subarrays where mid is the minimum elemnt.
      count = (mid - left_boundary) * (right_boundary - mid)
      sum += count * arr[mid]
    end
    stack.append(i)
  end
  return sum % mod
end
