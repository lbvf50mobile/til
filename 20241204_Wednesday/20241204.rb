# Leetcode: 2825. Make String a Subsequence Using Cyclic Increments
# https://leetcode.com/problems/make-string-a-subsequence-using-cyclic-increments/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 160 ms, faster than 100.00% of Ruby online submissions for Make
# String a Subsequence Using Cyclic Increments.
# Memory Usage: 216.3 MB, less than 100.00% of Ruby online submissions for
# Make String a Subsequence Using Cyclic Increments.
# 2024.12.04 Daily Challenge.
# @param {String} str1
# @param {String} str2
# @return {Boolean}
def can_make_subsequence(str1, str2)
  i = 0 # str1 index.
  (0...str2.size).each do |j|
    char = str2[j]
    n1 = char.ord
    n2 = (char.ord - 1) >= ?a.ord ? (char.ord-1) : ?z.ord
    find = false
    while i < str1.size
      number = str1[i].ord
      if number == n1 || number == n2
        find = true
        i += 1
        break
      end
      i += 1
    end
    return false if !find
  end
  return true
end
