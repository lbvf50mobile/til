# Leetcode: 456. 132 Pattern.
# https://leetcode.com/problems/132-pattern
# @param {Integer[]} nums
# @return {Boolean}
# Incorrect: [3,5,0,3,4]
def find132pattern(nums)
  # Hint from:
  # https://leetcode.com/problems/132-pattern/discuss/94071/Single-pass-C%2B%2B-O(n)-space-and-time-solution-(8-lines)-with-detailed-explanation.
  # Snap shot of monotonic stack.
  s = []
  nums.each do |x|
    do_pop = false
    while (!s.empty?) && s[-1] >= x
      if s[-1] == x
        s.pop
      else
        # If it is a second pop.
        return true if s.size > 1 && do_pop
        do_pop = true
        s.pop
      end
    end
    # If pop only ones.
    return true if !s.empty? && do_pop
    s.push x
  end
  return false
end
