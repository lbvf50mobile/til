# Leetcode: 28. Find the Index of the First Occurrence in a String.
# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 85 ms, faster than 61.06% of Ruby online submissions for Find the Index of the First Occurrence in a String.
# Memory Usage: 211.2 MB, less than 8.85% of Ruby online submissions for Find the Index of the First Occurrence in a String.
# 2023.03.03 Daily Challenge.
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return -1 if needle.size > haystack.size
  (0...(haystack.size - needle.size + 1)).each do |i|
    if haystack[i] == needle[0]
      count = 0
      (0...needle.size).each do |delta|
        break if haystack[i+delta] != needle[delta]
        count += 1
      end
      return i if count == needle.size
    end
  end
  return -1
end
