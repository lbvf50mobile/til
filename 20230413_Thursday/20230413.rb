# Leetcode: 946. Validate Stack Sequences.
# https://leetcode.com/problems/validate-stack-sequences/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 85 ms, faster than 100.00% of Ruby online submissions for Validate
# Stack Sequences.
# Memory Usage: 211.9 MB, less than 50.00% of Ruby online submissions for
# Validate Stack Sequences.
# 2023.04.13 Daily Challenge.
# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
  stack,j = [], 0
  pushed.each do |x|
    stack.push(x)
    while (!stack.empty?) && j < popped.size && popped[j] == stack.last
      stack.pop
      j += 1
    end
  end
  return stack.empty? &&  popped.size == j
end
