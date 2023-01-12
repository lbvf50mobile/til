# Leetcode: 1519. Number of Nodes in the Sub-Tree With the Same Label.
# https://leetcode.com/problems/number-of-nodes-in-the-sub-tree-with-the-same-label/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1312 ms, faster than 60.00% of Ruby online submissions for Number of Nodes in the Sub-Tree With the Same Label.
# Memory Usage: 362 MB, less than 10.00% of Ruby online submissions for Number of Nodes in the Sub-Tree With the Same Label.
# 2023.01.12 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} edges
# @param {String} labels
# @return {Integer[]}
def count_sub_trees(n, edges, labels)
  @n, @m = n, labels.chars.uniq.size
  @char_number = {}
  @last_number = 0
  @l = Array.new(@n)
  @n.times do |i|
    x = @char_number[labels[i]]
    if x
      @l[i] = x
    else
      @char_number[labels[i]] = @last_number
      @l[i] = @last_number
      @last_number += 1
    end
  end
  @al = {}
  @cnt = Array.new(@n).map{ Array.new(@m,0)}
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
      @m.times do |c|
        @cnt[i][c] += @cnt[j][c]
      end
    end
  end
end
