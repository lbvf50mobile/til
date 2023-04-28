# Leetcode: 839. Similar String Groups.
# https://leetcode.com/problems/similar-string-groups/
# = = = = = = = = = = = = = =
# TLE. But correct.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# TLE.
# 2023.04.28 Daily Challenge.
# @param {String[]} strs
# @return {Integer}
def num_similar_groups(strs)
  # Hint from the Leetcode's solution.
  @n = strs[0].size
  @al = Array.new(strs.size){ Array.new }
  (0...strs.size).each do |i|
    (i+1...strs.size).each do |j|
      next if ! similar(strs[i],strs[j])
      @al[i].push(j)
      @al[j].push(i)
    end
  end
  @v = Array.new(strs.size,false)
  ans = 0
  (0...strs.size).each do |i|
    next if @v[i]
    dfs(i)
    ans += 1
  end
  return ans 
end

def dfs(i)
  @v[i] = true
  @al[i].each do |j|
    next if @v[j]
    dfs(j)
  end
end

def similar(a,b)
  cnt = 0
  (0...@n).each do |i|
    if a[i] != b[i]
      cnt += 1
    end
  end
  return 2 == cnt || 0 == cnt
end
