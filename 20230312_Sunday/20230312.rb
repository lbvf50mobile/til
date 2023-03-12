# Leetcode: 23. Merge k Sorted Lists.
# https://leetcode.com/problems/merge-k-sorted-lists/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 97 ms, faster than 90.16% of Ruby online submissions for Merge k Sorted Lists.
# Memory Usage: 212.4 MB, less than 62.30% of Ruby online submissions for Merge k Sorted Lists.
# 2023.03.12 Daily Challenge.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  return nil if 0 == lists.size
  arr = []
  lists.each do |x|
    while x
      arr.push(x)
      x = x.next
      arr.last.next = nil
    end
  end
  arr.sort_by!{|x| x.val}
  return nil if arr.empty?
  (0...(arr.size-1)).each do |i|
    arr[i].next = arr[i+1]
  end
  return arr[0]
end
