# Leetcode: 1647. Minimum Deletions to Make Character Frequencies Unique.
# https://leetcode.com/problems/minimum-deletions-to-make-character-frequencies-unique/
# @param {String} s
# @return {Integer}
def min_deletions(s)
  x = s.chars.each_with_object(Hash.new){|e,o| o[e] ||= 0; o[e] += 1}.values.sort_by{|x| -x}
  p x
  return 0 if 1 == x.size
  deleted = 0
  value = x[0] - 1
  (1...x.size).each do |i|
    size = x[i]
    next if 0 == size
    if value <= 0
      deleted += size
      next
    end
    new_value = size-1
    if value > size
      deleted += size - value
      new_value = value - 1
    end
    value = new_value
  end
  deleted
end
