# Leetcode: 215. Kth Largest Element in an Array.
# https://leetcode.com/problems/kth-largest-element-in-an-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 2649 ms, faster than 7.62% of Ruby online submissions for Kth Largest Element in an Array.
# Memory Usage: 278.5 MB, less than 16.19% of Ruby online submissions for Kth Largest Element in an Array.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  heap = MinHeap.new
  nums.each do |el|
    if heap.size < k
      heap.push(el)
    elsif heap.min <= el
      heap.pop
      heap.push(el)
    end
  end
  heap.pop
end
