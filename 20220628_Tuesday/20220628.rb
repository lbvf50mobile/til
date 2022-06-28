# Leetcode: 1647. Minimum Deletions to Make Character Frequencies Unique.
# https://leetcode.com/problems/minimum-deletions-to-make-character-frequencies-unique/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 815 ms, faster than 40.00% of Ruby online submissions for Minimum Deletions to Make Character Frequencies Unique.
# Memory Usage: 228.3 MB, less than 20.00% of Ruby online submissions for Minimum Deletions to Make Character Frequencies Unique.
# @param {String} s
# @return {Integer}
def min_deletions(s)
  x = s.chars.each_with_object(Hash.new){|e,o| o[e] ||= 0; o[e] += 1}.values.sort_by{|x| -x}
  @d = false
  puts x.inspect if @d
  return 0 if 1 == x.size
  deleted = 0
  value = x[0] - 1
  (1...x.size).each do |i|
    size = x[i]
    puts "size:#{size}; value:#{value}; deleted:#{deleted}" if @d
    next if 0 == size
    if value <= 0
      deleted += size
      next
    end
    new_value = size-1
    if value < size
      puts "#{value}<#{size} add #{size-value}" if @d
      deleted += (size - value)  # !
      new_value = value - 1
    end
    value = new_value
  end
  deleted
end
