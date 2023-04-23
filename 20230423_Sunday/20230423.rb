# Leetcode: 1416. Restore The Array.
# https://leetcode.com/problems/restore-the-array/
# @param {String} s
# @param {Integer} k
# @return {Integer}
def number_of_arrays(s, k)
  # Based on:
  # https://leetcode.com/problems/restore-the-array/solution/
  @d  = true
  @s, @k = s,k
  @m, @n = s.size, k.to_s.size
  p [@m,@n,@mod] if @d
  @mod = 10**9 + 7
  @dp =  Array.new(@m+1)
  p [@dp] if @d
  dfs(0) % @mod
end

def dfs(start)
  # If we alrady have an updated dp[start], return it.
  p start if @d
  return @dp[start] if @dp[start]
  # There is only 1 split for a nempty string.
  return 1 if @m == start
  # Number cant't have leading zeros.
  return 0 if ?0 == @s[start]
  # For any possbile staring number, add the nuber of
  # arrays that can be printed as the remaining string to count.
  count = 0
  (start...@m).each do |en|
    curr = @s[start...en]
    break if curr.to_i > @k
    count += dfs(en+1)
  end
  @dp[start] = count % @mod
  return count
end
