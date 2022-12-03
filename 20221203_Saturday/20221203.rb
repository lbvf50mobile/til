# Leetcode: 451. Sort Characters By Frequency.
# https://leetcode.com/problems/sort-characters-by-frequency/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 337 ms, faster than 19.36% of Ruby online submissions for Sort Characters By Frequency.
# Memory Usage: 225.2 MB, less than 11.29% of Ruby online submissions for Sort Characters By Frequency.
# @param {String} s
# @return {String}
def frequency_sort(s)
  counter = s.chars.tally
  s.chars.uniq.sort_by{|x| - counter[x]}.map{|x| x*counter[x]}.join
end
