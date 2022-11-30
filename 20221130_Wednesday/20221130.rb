# Leetcode: 1207. Unique Number of Occurrences.
# https://leetcode.com/problems/unique-number-of-occurrences/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 87 ms, faster than 90.28% of Ruby online submissions for Unique Number of Occurrences.
# Memory Usage: 211.1 MB, less than 41.67% of Ruby online submissions for Unique Number of Occurrences.
# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  occurrences = arr.tally.values
  occurrences.size == occurrences.uniq.size
end
