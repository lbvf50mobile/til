# Leetcode: 49. Group Anagrams.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/614/week-2-august-8th-august-14th/3887/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  strs.group_by{|x| create_key(x)}.values
end

def create_key(str)
  key = Array.new(26,0)
  str.chars.each{|x| key[x.ord - ?a.ord]+=1}
  key.map(&:to_s).join(?,)
end
