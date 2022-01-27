# Leetcode: 421. Maximum XOR of Two Numbers in an Array.
# https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array/
# @param {Integer[]} nums
# @return {Integer}
def find_maximum_xor(nums)
  # Solution based on:
  # https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array/discuss/166211/Python-O(n)-solution-for-dummies-like-me-easy-commented-solution-with-explanation
  root = get_Trie
  bit_range = (0..31).to_a.reverse
  nums.each do |num|
    curr = root
    bit_range.each do |i|
      mask = 1 << i
      masked_num = num & mask
      if 0 == masked_num
        curr.zero = get_Trie() if ! curr.zero
        curr = curr.zero
      else
        curr.one = get_Trie() if ! curr.one
        curr = curr.one
      end
    end
    cur.value = num
  end
  max_xor = 0
  nums.each do |num|
    curr = root
    bit_range.each do |i|
      mask = 1 << i
      masked_num = num & mask
      if 0 == masked_num
        curr = curr.one ? curr.one : curr.zero
      else
        curr = curr.zero ? curr.zero : curr.one
      end
    end
    tmp = num ^ curr.value
    max_xor = max_xor_rom_num if tmp
  end
  max_xor
end

def get_Trie
  return {zero: nil, one: nil, value: nil}
end
