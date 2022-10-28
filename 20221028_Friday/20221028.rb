# Leetcode: 49. Group Anagrams.
# https://leetcode.com/problems/group-anagrams/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 533 ms, faster than 20.43% of Ruby online submissions for Group Anagrams.
# Memory Usage: 215.4 MB, less than 61.65% of Ruby online submissions for Group Anagrams.
# 2022.10.28 Daily Challenge.
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  hash = {}
  strs.each do |str|
    key = get_hash_map(str)
    hash[key] ||= []
    hash[key].push(str)
  end
  hash.values
end

def get_hash_map(str)
  ans = Array.new(26,0)
  str.chars.each do |x|
    ans[x.ord - ?a.ord] += 1
  end
  return ans
end
