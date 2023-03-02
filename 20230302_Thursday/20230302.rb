# Leetcode: 443. String Compression.
# https://leetcode.com/problems/string-compression/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 140 ms, faster than 20.00% of Ruby online submissions for String Compression.
# Memory Usage: 211.6 MB, less than 40.00% of Ruby online submissions for String Compression.
# 2023.03.02 Daily Challenge.
# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  @a = chars
  @w = 0
  @sym, @cnt = @a[0], 1
  (1...@a.size).each do |j|
    prv,cur = @a[j-1],@a[j]
    if prv != cur
      write()
      @sym = cur
      @cnt = 1
    else
      @cnt += 1
    end
  end
  write()
  return @w
end

def write()
  if 1 == @cnt
    @a[@w] = @sym
    @w += 1
    return
  end
  str = "#{@sym}#{@cnt.to_s}"
  str.size.times do |i|
    char = str[i]
    @a[@w] = char
    @w += 1
  end
end
