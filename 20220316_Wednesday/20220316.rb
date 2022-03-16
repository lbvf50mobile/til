# Leetcode: 946. Validate Stack Sequences.
# https://leetcode.com/problems/validate-stack-sequences/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 80 ms, faster than 50.00% of Ruby online submissions for Validate Stack Sequences.
# Memory Usage: 211.9 MB, less than 50.00% of Ruby online submissions for Validate Stack Sequences.
# @paho cram {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
  stack = []
  pushed.each do |x|
    stack.push x
    while (! stack.empty?) && stack.last == popped.first
      popped.shift
      stack.pop
    end
  end
  popped.empty?
end
