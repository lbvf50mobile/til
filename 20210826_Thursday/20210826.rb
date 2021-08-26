# Leetcode: 331. Verify Preorder Serialization of a Binary Tree. 
# https://leetcode.com/problems/verify-preorder-serialization-of-a-binary-tree/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/616/week-4-august-22nd-august-28th/3920/
# @param {String} preorder
# @return {Boolean}
def is_valid_serialization(preorder)
  arr = preorder.split(?,) # Convert string into array of tree nodes.
  slots = 1 # Slots counter, now have one place for incoming root. Root might be nil.
  arr.each do |x|
    slots -= 1 # Each type of node eats one slot.
    return false if slots < 0 # Not enough place for current node.
    slots += 2 if x != ?# # Add place for two children, if not nil.
  end
  0 == slots
end
