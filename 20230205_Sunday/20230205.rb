# Leetcode: 438. Find All Anagrams in a String.
# https://leetcode.com/problems/find-all-anagrams-in-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 202 ms, faster than 92.16% of Ruby online submissions for Find All Anagrams in a String.
# Memory Usage: 212.4 MB, less than 76.47% of Ruby online submissions for Find All Anagrams in a String.
# 2023.02.05 Daily Challenge.
# @param {String} s
# @param {String} pp
# @return {Integer[]}
def find_anagrams(s, pp)
  tmpl = get_count(pp) # Template.
  cmpr = get_count(s[0...pp.size]) # For compare.
  answer = []
  answer.push(0) if tmpl == cmpr
  (pp.size...s.size).each do |i|
    prev = s[i-pp.size].ord - ?a.ord
    curr = s[i].ord - ?a.ord
    cmpr[prev] -= 1
    cmpr[curr] += 1
    answer.push(i-pp.size+1) if tmpl == cmpr
  end
  answer
end
def get_count(str)
  answer = [0]*26
  str.chars.each do |c|
    answer[c.ord - ?a.ord] += 1
  end
  return answer
end
