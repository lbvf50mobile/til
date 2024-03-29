# Leetcode: 1768. Merge Strings Alternately.
# https://leetcode.com/problems/merge-strings-alternately/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 80 ms, faster than 85.00% of Ruby online submissions for Merge
# Strings Alternately.
# Memory Usage: 211 MB, less than 35.00% of Ruby online submissions for Merge
# Strings Alternately.
# 2023.04.18 Daily Challenge.
# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  flag = true
  i,j = 0,0
  ans = []
  while i < word1.size && j < word2.size
    if flag
      ans.push(word1[i])
      i += 1
    else
      ans.push(word2[j])
      j += 1
    end
    flag = !flag
  end
  while i < word1.size
    ans.push(word1[i])
    i += 1
  end
  while j < word2.size
    ans.push(word2[j])
    j += 1
  end
  ans.join
end
