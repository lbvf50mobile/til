# Leetcode: 522. Longest Uncommon Subsequence II.
# https://leetcode.com/problems/longest-uncommon-subsequence-ii/
# https://leetcode.com/problems/longest-uncommon-subsequence-ii/discuss/1428729/C%2B%2B-or-JAVA-or-Python3-2-Approaches-oror-Easy-to-Understand
# @param {String[]} strs
# @return {Integer}
def find_lu_slength(strs)
  strs.sort_by!{|x| -x.size}
  (0...strs.size - 1).each do |i|
    no_subseq = true
    (i+1...strs.size).each do |j|
      if is_subseq(strs[j],strs[i])
        no_subseq = false
        break # There is a string.
      end
    end
    return strs[i].size if no_subseq
  end
 return -1  
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
