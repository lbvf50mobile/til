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
  return false if a.size != b.size
  inds = []
  (0...a.size).each do |i|
    if a[i] != b[i]
      inds.push(i)
      return false if 2 < inds.size
    end
  end
  return false if ! (2 == inds.size || 0 == inds.size)
  return true if 0 == inds.size
  i,j = inds
  return true if a[i] == b[j] &&  a[j] == b[i]
  return false
end
