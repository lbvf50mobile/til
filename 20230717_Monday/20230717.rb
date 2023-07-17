# Leetcode: 445. Add Two Numbers II.
# https://leetcode.com/problems/add-two-numbers-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 98 ms, faster than 100.00% of Ruby online submissions for Add Two
# Numbers II.
# Memory Usage: 211.4 MB, less than 33.33% of Ruby online submissions for Add
# Two Numbers II.
# 2023.07.17 Daily Challenge.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  a,b = [],[]
  while l1
    a.push l1.val
    l1 = l1.next
  end
  while l2
    b.push l2.val
    l2 = l2.next
  end
  rmd = 0
  ans = []
  while (!a.empty?) || (!b.empty?)
    # Get 'a' value.
    av, bv = 0, 0
    if !a.empty?
      av = a.pop
    end
    # Get 'b' value.
    if !b.empty?
      bv = b.pop
    end
    total = av + bv + rmd
    ans.unshift total%10
    rmd = total/10
  end
  if 0 != rmd
    ans.unshift rmd
  end
  return ans
end
