# Leetcode: Merge k Sorted Lists.
# https://leetcode.com/problems/merge-k-sorted-lists/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 147 ms, faster than 52.17% of Ruby online submissions for Merge k Sorted Lists.
# Memory Usage: 212.1 MB, less than 28.26% of Ruby online submissions for Merge k Sorted Lists.
#
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
  lists.map{|x| l_to_a(x)}.flatten.sort
end

def l_to_a x
  ans = []
  while x
    ans.push(x.val)
    x = x.next
  end
  ans
end
