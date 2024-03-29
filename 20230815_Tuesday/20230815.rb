# Leetcode: 86. Partition List.
# https://leetcode.com/problems/partition-list/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 77 ms, faster than 60.00% of Ruby online submissions for Partition
# List.
# Memory Usage: 211.1 MB, less than 30.00% of Ruby online submissions for
# Partition List.
# 2023.08.15 Daily Challenge.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  # 1) Test empy list.
  return nil if head.nil?
  # 2) Define head and tail for small elements. Prev. Before.
  prev = nil
  last_prev = nil
  # 3) Define head nad tial for big elements. After. 
  after = nil
  last_after = nil
  # 4) Start loop. Iterate over all elements of the list. 
  tmp = head
  while tmp
    # 5) Save next pointer. And nil current element for security reasons.
    nxt = tmp.next
    tmp.next = nil # for security.
    # 6) If statement for small (prev) and big (after) elements.
    if tmp.val < x
      # 7) Set head of small (prev) elements list.
      # Filling small elements before.
      if prev.nil?
        # No head. Create head.
        prev = tmp
        last_prev = tmp
      else
        # 8) Add to the tail of the small (prev) elements.
        # Add data to the tail.
        last_prev.next = tmp
        last_prev = tmp
      end
    else
      # 9) Set head for big (after) elements.
      # Filling bigger elements after.
      if after.nil?
        # No head. Create head.
        after = tmp
        last_after = tmp
      else
        # 10) Append data to the tail of big (after) elments.
        # Add data to the tail.
        last_after.next = tmp
        last_after = tmp
      end
    end
    # 11) Restore next at the end of the interation.
    tmp =  nxt
  end
  # 12) All elements bigger or equal to the x.
  # No small eleemnts.
  return after if prev.nil?
  # 13) Connect two lists.
  # Tail of small elements points of after (big) elements.
  last_prev.next = after
  # 14) Return.
  return prev
end
