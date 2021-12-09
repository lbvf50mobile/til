# Leetcode: 316. Remove Duplicate Letters.
# https://leetcode.com/problems/remove-duplicate-letters/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 72 ms, faster than 100.00% of Ruby online submissions for Remove Duplicate Letters.
# Memory Usage: 210.6 MB, less than 22.22% of Ruby online submissions for Remove Duplicate Letters.
# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  # Code based on this example:
  # https://leetcode.com/problems/remove-duplicate-letters/discuss/889477/Python-O(n)-greedy-with-stack-explained
  last_occ = {}
  s.chars.each_with_index do |c,i|
    last_occ[c] = i
  end
  stack = ["!"]
  require 'set'
  visited = Set.new
  s.chars.each_with_index do |c,i|
    next if visited.include?(c)
    while c < stack.last && last_occ[stack.last] > i
      visited.delete(stack.pop())
    end
    stack.push(c)
    visited.add(c)
  end
  stack[1..-1].join
end
