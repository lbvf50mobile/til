# Leetcode: 1044. Longest Duplicate Substring.
# https://leetcode.com/problems/longest-duplicate-substring/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1456 ms, faster than 100.00% of Ruby online submissions for Longest Duplicate Substring.
# Memory Usage: 216.7 MB, less than 100.00% of Ruby online submissions for Longest Duplicate Substring.
# @param {String} s
# @return {String}
def longest_dup_substring(s)
  # Based on (translated from Python):
  # https://leetcode.com/problems/longest-duplicate-substring/discuss/695029/Python-Binary-search-O(n-log-n)-average-with-Rabin-Karp-explained
  beg, fin = 0, s.size
  found = ""
  q = (1<<31) - 1
  while beg+1 < fin
    mid = (beg+fin)/2
    isFound, candidate = rabinkarp(s,mid,q)
    p [isFound, candidate]
    if isFound
      beg, found = mid, candidate
    else
      fin = mid
    end
  end
  return found
end

def rabinkarp(s,mid,q)
  return [true,""] if 0 == mid
  h, t, d = (1<<(8*mid-8))%q, 0, 256
  dic = {}
  (0...mid).each{|i| t = (d*t + s[i].ord)%q }
  dic[t] ||= []
  dic[t].push(0)
  (0...s.size-mid).each do |i|
    t = (d*(t-s[i].ord*h)+s[i+mid].ord)%q
    dic[t] ||= []
    dic[t].each do |j|
      if s[i+1...i+mid+1] == s[j...j+mid]
        return [true,s[j...j+mid]]
      end
    end
    dic[t].push(i+1)
  end
  return [false,""]
end
