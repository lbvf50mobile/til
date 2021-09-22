# Leetcode: 1239. Maximum Length of a Concatenated String with Unique Characters.
# https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/
# = = = = = = = 
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/639/week-4-september-22nd-september-28th/3984/
# @param {String[]} arr
# @return {Integer}
def max_length(arr)
  @a = arr
  @counter = Array.new(26,0)
  @max = 0
  (0...@a.size).each do |i|
    rec(i,0)
  end
  return @max
end

def rec(i,length)
  # Increase chars counter for a new string.
  str = @a[i]
  (0...str.size).each{|j| @counter[str[j].ord - ?a.ord] += 1}
  # Check each characters in the new state is NOT duplicated.
  if @counter.all?{|x| x < 2 }
    length += str.length
    @max = length if length > @max
    (i+1...@a.size).each do |j|
      rec(j,length)
    end
  end
  # Now time to clear general counter from the current word's characters.
  (0...str.size).each{|j| @counter[str[j].ord - ?a.ord] -= 1}
end
