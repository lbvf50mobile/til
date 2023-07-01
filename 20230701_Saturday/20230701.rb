# Leetcode: 2305. Fair Distribution of Cookies.
# https://leetcode.com/problems/fair-distribution-of-cookies/
# = = = = = = = = = = = = = =
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# @param {Integer[]} cookies
# @param {Integer} k
# @return {Integer}
# TLE.
def distribute_cookies(cookies, k)
  @dp = {}
  @key = Array.new(k+2,0) # index, max
  @c = cookies
  @k = k
  @min = Float::INFINITY
  dfs()
  return @min
end


def dfs
  if @key[0] == @c.size
    @min = @key[1] if @key[1] < @min
    return
  end
  return @dp[@key] if @dp[@key]
  (0...@k).each do |j|
    j = j + 2 # Offset from i and max;

    # Put element in j pocket.
    
    # 1, 2, 3; i, pocket, max;
    i = @key[0] # 1) Save i.
    old_val = @key[j] # 2) Save pocket.
    old_max = @key[1] # 3) Save max.

    # 1, 2, 3; i, pocket, max;
    @key[0] = i + 1 # 1) Change i;
    @key[j] += @c[i] # 2) Change poket.
    @key[1] = @key[j] if @key[j] > old_max # 3) Chage pocket.

    dfs()

    # 1, 2, 3; i, pocket, max;
    @key[0] = i # 1) Restore i.
    @key[j] = old_val # 2) Restore pocket.
    @key[1] = old_max # 3) Restore max.
  end
  @dp[@key.clone] = true
end
