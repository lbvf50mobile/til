# Leetcode: 522. Longest Uncommon Subsequence II.
# https://leetcode.com/problems/longest-uncommon-subsequence-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/problems/longest-uncommon-subsequence-ii/discuss/1428729/C%2B%2B-or-JAVA-or-Python3-2-Approaches-oror-Easy-to-Understand
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/616/week-4-august-22nd-august-28th/3921/
# @param {String[]} strs
# @return {Integer}
def find_lu_slength(strs)
  ans = -1
  (0...strs.size).each do |i|
    flag = true
    (0...strs.size).each do |j|
      if i != j && is_subseq(strs[i],strs[j])
        flag = false
        break
      end
    end
    if flag
      ans = strs[i].size if ans < strs[i].size
    end
  end
  ans
end

def is_subseq(a,b)
  return false if a.size > b.size
  as,bs = a.size, b.size
  while as > 0 && bs > 0
    i,j = a.size - as, b.size - bs
    as -= 1 if a[i] == b[j] # Use curren `a` sybmol.
    bs -= 1
  end
  0 == as # Used all symbols from the `a` string.
end
