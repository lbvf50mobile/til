# Leetcode: 1239. Maximum Length of a Concatenated String with Unique Characters.
# https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/
# @param {String[]} arr
# @return {Integer}
def max_length(arr)
  @d = true
  @max = 0
  # Filter string with duplicates.
  @a = arr.select{|x| x.chars.size == x.chars.uniq.size}
  @masks = @a.map{|x| str2mask(x)}
  @lens = @a.map(&:size)
  (0...@a.size).each do |i|
    dfs(i,0,0,"")
  end
  return @max
end

def dfs(i,total_mask, total_size, str)
  puts "#{i} #{@a[i]}"
  total_mask |= @masks[i]
  total_size += @lens[i]
  str = str + @a[i]
  if @max < total_size
    @max = total_size
    p [str,total_size] if @d
  end
  (i+1...@a.size).each do |j|
    check = 0 == (total_mask & @masks[j])
    puts "i=#{i} j=#{j} str=#{str} check=#{check.inspect}" if @d
    puts "#{str_mask(total_mask)} : #{str}" if @d
    puts "#{str_mask(@masks[j])} : #{@a[j]}" if @d
    puts "#{str_mask(total_mask & @masks[j])} : #{str + "&" + @a[j]}" if @d
    # Fix! Need to have j instead of i.
    dfs(j,total_mask, total_size, str) if 0 == (total_mask & @masks[j]) 
  end
end

def str_mask(mask)
  mask.to_s(2).rjust(26,?0)
end

def str2mask(str)
  mask = 0
  str.chars.each do |x|
    # Fix! Forget to move one.
    mask = mask | (1 << (x.ord - ?a.ord)) # Fix!
  end
  return mask
end
