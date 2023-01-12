# Leetcode: 1519. Number of Nodes in the Sub-Tree With the Same Label.
# https://leetcode.com/problems/number-of-nodes-in-the-sub-tree-with-the-same-label/
# @param {Integer} n
# @param {Integer[][]} edges
# @param {String} labels
# @return {Integer[]}
# TLE
def count_sub_trees(n, edges, labels)
  @n, @l = n, labels.chars
  @al = {}
  @cnt = Array.new(@n).map{ Hash.new(0)}
  @v = Array.new(@n,false)
  edges.each do |a,b|
    @al[a] ||= []; @al[b] ||= []
    @al[a].push(b); @al[b].push(a)
  end
  dfs(0)
  answer = Array.new(@n,0)
  @n.times do |i|
    answer[i] = @cnt[i][@l[i]]
  end
  return answer
end

def dfs(i)
  return if @v[i]
  @v[i] = true
  @cnt[i][@l[i]] += 1
  @al[i].each do |j|
    if ! @v[j]
      dfs(j)
      (?a..?z).each do |c|
        @cnt[i][c] += @cnt[j][c]
      end
    end
  end
end
