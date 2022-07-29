# Leetcode: 890. Find and Replace Pattern.
# https://leetcode.com/problems/find-and-replace-pattern/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 133 ms, faster than 66.67% of Ruby online submissions for Find and Replace Pattern.
# Memory Usage: 211.1 MB, less than 83.33% of Ruby online submissions for Find and Replace Pattern.
# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
  w = words.map{|x| [x,converter(x)]}
  ptrn = converter(pattern)
  w.select{|x| x.last == ptrn}.map(&:first)
end

def converter(str)
  answer = ""
  counter = 0
  map = Array.new(26,0)
  str.chars.each do |c|
    index = c.ord - ?a.ord # Here was en error.
    if 0 == map[index]
      counter += 1
      map[index] = counter
    end
    answer << map[index].to_s
    answer << ?,
  end
  answer
end
