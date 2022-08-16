# Leetcode: 387. First Unique Character in a String.
# https://leetcode.com/problems/first-unique-character-in-a-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 469 ms, faster than 35.90% of Ruby online submissions for First Unique Character in a String.
# Memory Usage: 217.2 MB, less than 27.18% of Ruby online submissions for First Unique Character in a String.
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  counter = Array.new(26,0)
  position = Array.new(26,nil)
  s.chars.each_with_index do |char,i|
    code = char.ord - ?a.ord
    next if 2 == counter[code]
    counter[code] += 1
    position[code] = i if ! position[code]
  end
  min = s.size 
  (0...26).each do |i|
    next if 1 != counter[i]
    min = position[i] if position[i] < min
  end
  return -1 if s.size == min
  return min
end
