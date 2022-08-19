# Leetcode: 659. Split Array into Consecutive Subsequences.
# https://leetcode.com/problems/split-array-into-consecutive-subsequences/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 293 ms, faster than 100.00% of Ruby online submissions for Split Array into Consecutive Subsequences.
# Memory Usage: 218.5 MB, less than 100.00% of Ruby online submissions for Split Array into Consecutive Subsequences.
# @param {Integer[]} nums
# @return {Boolean}
def is_possible(nums)
  # Based on: 
  # https://leetcode.com/problems/split-array-into-consecutive-subsequences/discuss/106514/C%2B%2BPython-Esay-Understand-Solution
  source = nums.tally
  destination = Hash.new(0)
  nums.each do |x|
    next if 0 == source[x]
    source[x] -= 1
    # Possible to extend existed subsequence.
    if 0 != destination[x-1]
      destination[x-1] -= 1
      destination[x] += 1
      # Possible to start new subsequence of 3 elements.
      # Here was en error source has no default 0.
    elsif (source[x+1] && 0 != source[x+1]) && (source[x+2] && 0 != source[x+2])
      source[x+1] -= 1
      source[x+2] -= 1
      destination[x+2] += 1
      # Impossible to place x somewhere. Return false.
    else
      return false
    end
  end
  return true
end
