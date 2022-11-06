# Leetcode: 899. Orderly Queue.
# https://leetcode.com/problems/orderly-queue/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 315 ms, faster than 100.00% of Ruby online submissions for Orderly Queue.
# Memory Usage: 221.2 MB, less than 100.00% of Ruby online submissions for Orderly Queue.
# @param {String} s
# @param {Integer} k
# @return {String}
def orderly_queue(s, k)
  # Based on:
  # https://leetcode.com/problems/orderly-queue/solution/
  if 1 == k
    array = []
    tmp = s.chars
    (0...s.size).each do |i|
      # Fix! Here was tmp instead of array. Fixed.
      array.push((tmp[i..-1] + tmp[0...i]).join)
    end
    return array.min
  end
  s.chars.sort.join
end
