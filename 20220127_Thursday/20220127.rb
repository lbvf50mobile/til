# Leetcode: 421. Maximum XOR of Two Numbers in an Array.
# https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array/
# @param {Integer[]} nums
# @return {Integer}
def find_maximum_xor(nums)
  # Solution based on:
  # https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array/discuss/166211/Python-O(n)-solution-for-dummies-like-me-easy-commented-solution-with-explanation
  #
  # We will frist construct a tree that represents all the nums.
  # The tree starts at `root` node, and all the leaf nodes in this tree will represent one num in nums.
  root = get_Trie
  # We will use this to iterate over num bit by bit.
  bit_range = (0..31).to_a.reverse
  nums.each do |num|
    # Always start at the top ot the tree.
    curr = root
    bit_range.each do |i|
      # Get i'th bit in num.
      # Mask will be something like 00010000, 1 being at the i'th position.
      mask = 1 << i
      # If i'th bit was 0, masked_num is 0. Else masked_num is some number. In this case 100 = 4.
      masked_num = num & mask
      if 0 == masked_num
        # i'th bit was a 0, so traverse left (to zero), and create node as necessary.
        curr[:zero] = get_Trie() if ! curr[:zero]
        curr = curr[:zero]
      else
        # i'th bit was a 1, so traverse rigth (to one), and create node as necessary.
        curr[:one] = get_Trie() if ! curr[:one]
        curr = curr[:one]
      end
    end
    # Store num in the leaf node.
    # We could always calculate it later ourselves by traversing the tree and using X*32+X*16+X*8+X*4+X*2+X*1
    # and so on. But I prefer this way, because it helps to point out that each leaf corresponds to a num
    # it the nums array.
    curr[:value] = num
  end
  # At this stage our tree is complete.
  # Note that, all the leafs nodes are at the same level - always 32. There are no leaf nodes in the tree
  # that are at any level less or more thn 32. Also, note thatthe tree starts with the most significant bit
  # (MSB) at the top, and least significant bit (LSB) at the bottom.
  #
  # To calculate maximum overall xor, we will first calculate maximum xor possible for each num in nums.
  max_xor = 0
  nums.each do |num|
    curr = root
    bit_range.each do |i|
      mask = 1 << i
      masked_num = num & mask
      if 0 == masked_num
        curr = curr[:one] ? curr[:one] : curr[:zero]
      else
        curr = curr[:zero] ? curr[:zero] : curr[:one]
      end
    end
    tmp = num ^ curr[:value]
    max_xor = tmp if tmp
  end
  max_xor
end

def get_Trie
  return {zero: nil, one: nil, value: nil}
end
