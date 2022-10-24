# Leetcode: 1239. Maximum Length of a Concatenated String with Unique Characters.
# https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 157 ms, faster than 100.00% of Ruby online submissions for Maximum Length of a Concatenated String with Unique Characters.
# Memory Usage: 211.2 MB, less than 100.00% of Ruby online submissions for Maximum Length of a Concatenated String with Unique Characters.
# 20221024 Daily Challenge.
# @param {String[]} arr
# @return {Integer}
def max_length(arr)
  @max = 0
  # Remove string with duplicate characters.
  @a = arr.select{|x| x.chars.size == x.chars.uniq.size}
  @masks = @a.map{|x| str2mask(x)}
  @lens = @a.map(&:size)
  (0...@a.size).each do |i|
    dfs(i,0,0)
  end
  return @max
end

def dfs(i,total_mask, total_size)
  total_mask |= @masks[i]
  total_size += @lens[i]
  @max = total_size if @max < total_size
  (i+1...@a.size).each do |j|
    check = 0 == (total_mask & @masks[j])
    # Fix! Need to have j instead of i.
    dfs(j,total_mask, total_size) if 0 == (total_mask & @masks[j]) 
  end
end

def str2mask(str)
  mask = 0
  str.chars.each do |x|
    # Fix! Forget to right shift one.
    mask = mask | (1 << (x.ord - ?a.ord)) # Fix!
  end
  return mask
end
