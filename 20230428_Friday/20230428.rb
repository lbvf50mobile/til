# Leetcode: 839. Similar String Groups.
# https://leetcode.com/problems/similar-string-groups/
# @param {String[]} strs
# @return {Integer}
def num_similar_groups(strs)
  @strs = strs
  @v = Array.new(@strs.size,false)
  ans = 0
  (0...@strs.size).each do |i|
    if ! @v[i]
      dfs(i)
      ans += 1
    end
  end
  return ans
end
def dfs(i)
  @v[i] = true
  (i+1...@strs.size).each do |j|
    next if @v[j]
    next if ! similar(@strs[i], @strs[j])
    dfs(j)
  end
end
def similar(a,b)
  cnt = 0
  (0...a.size).each do |i|
    if a[i] != b[i]
      cnt += 1
    end
  end
  return 2 == cnt || 0 == cnt
end
