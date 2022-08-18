# Leetcode: 1338. Reduce Array Size to The Half.
# https://leetcode.com/problems/reduce-array-size-to-the-half/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 339 ms, faster than 100.00% of Ruby online submissions for Reduce Array Size to The Half.
# Memory Usage: 233.2 MB, less than 100.00% of Ruby online submissions for Reduce Array Size to The Half.
# @param {Integer[]} arr
# @return {Integer}
def min_set_size(arr)
  matches = arr.tally.values.sort.reverse
  elements_needed = arr.size.even? ? arr.size/2 : arr.size/2 + 1
  answer = 0
  sum = 0
  matches.each do |number|
    break if sum >= elements_needed
    sum += number
    answer += 1
  end
  return answer
end
