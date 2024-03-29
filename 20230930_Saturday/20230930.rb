# Leetcode: 456. 132 Pattern.
# https://leetcode.com/problems/132-pattern
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 138 ms, faster than 50.00% of Ruby online submissions for 132
# Pattern.
# Memory Usage: 218.2 MB, less than 50.00% of Ruby online submissions for 132
# Pattern.
# 2023.09.30 Daily Challenge.
# @param {Integer[]} nums
# @return {Boolean}
# Incorrect: [3,5,0,3,4]
def find132pattern(nums)
  # Based on:
  # https://leetcode.com/problems/132-pattern/discuss/94071/Single-pass-C%2B%2B-O(n)-space-and-time-solution-(8-lines)-with-detailed-explanation.
  # Snap shot of monotonic stack.
  st = []
  s3 = -Float::INFINITY 
  nums.reverse_each do |x|
    return true if x < s3
    while !st.empty? && x > st[-1]
      s3 = st.pop 
    end
    st.push(x)
  end
  return false
end
