# Leetcode: 451. Sort Characters By Frequency.
# https://leetcode.com/problems/sort-characters-by-frequency/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 222 ms, faster than 27.78% of Ruby online submissions for Sort Characters By Frequency.
# Memory Usage: 219 MB, less than 83.33% of Ruby online submissions for Sort Characters By Frequency.
# @param {String} s
# @return {String}
def frequency_sort(s)
  hash = s.chars.each_with_object(Hash.new){|el,o| o[el]||=0; o[el]+=1}
  hash.keys.sort_by{|x| -hash[x]}.map{|x| x*hash[x]}.join
end
