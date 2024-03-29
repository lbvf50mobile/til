# Leetcode: 767. Reorganize String.
# https://leetcode.com/problems/reorganize-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 64 ms, faster than 100.00% of Ruby online submissions for Reorganize
# String.
# Memory Usage: 211.1 MB, less than 100.00% of Ruby online submissions for
# Reorganize String.
# 2023.08.23 Daily Challenge.
# @param {String} s
# @return {String}
def reorganize_string(s)
  # Based on:
  # https://leetcode.com/problems/reorganize-string/solution/
  char_counts = s.chars.tally
  max_count, letter = 0, ""
  char_counts.each do |char,count|
    if count > max_count
      max_count = count
      letter = char
    end
  end
  return "" if max_count > (s.size+1)/2
  ans = Array.new(s.size,"")
  index = 0
  # Place the most frequent letter.
  while char_counts[letter] != 0
    ans[index] = letter
    index += 2
    char_counts[letter] -= 1
  end

  # Place rest of the letters in any order.
  char_counts.each do |char, count|
    while count > 0
      index = 1 if index >= s.size 
      ans[index] = char
      index += 2
      count -= 1
    end
  end
  ans.join
end
