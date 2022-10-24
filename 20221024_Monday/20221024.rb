# Leetcode: 1239. Maximum Length of a Concatenated String with Unique Characters.
# https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/
# @param {String[]} arr
# @return {Integer}
# TLE
def max_length(arr)
  # All string must have uniq characters.
  # Create array of elements.
  @a = arr.select{|x| x == x.chars.uniq.join}.
    map{|x| [x.size,x, x.chars.tally]}
  # Create answer max.
  @max = 0
  # Iterate over all elements.
  @a.each_with_index{|el,i|
    @max = el[0] if el[0] > @max
    back(i, i+1, el[0],el[1])
  }
  return @max
end
def back(prev, current, size, str)
  return if current >= @a.size
  return if ! check(@a[prev][2], @a[current][2])
  return if str != str.chars.uniq.join
  size += @a[current][0]
  @max = size if size > @max
  (size+1...@a.size).each do |i|
    back(current,i, size, str + @a[current][1])
  end
end

def check(a,b)
  a.keys.all?{|key| ! b[key]}
end
