# Leetcode: 834. Sum of Distances in Tree.
# https://leetcode.com/problems/sum-of-distances-in-tree/
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/636/week-1-september-1st-september-7th/3963/
# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[]}
def sum_of_distances_in_tree(n, edges)
  @dp_rl = Array.new(n) # dynamic programming array move from root to leaves.
  @alist_rl = Array.new(n).map{ [] }

  @dp_lr = Array.new(n) # dynamic programming array move from leaves to root.
  @alist_lr = Array.new(n).map{[]}

  edges.each do |(a,b)|
    @alist_rl[a].push(b)
    @alist_lr[b].push(a)
  end

  (0...n).each do |i|
    dfs_rl(i) if @dp_rl[i].nil?
  end
    
end


def dfs_rl(i)
  return @dp_rl[i] if @dp_rl[i]
  ans = @alist_rl[i].size
  @alist_rl[i].each do |j|
    ans += dfs_rl(j)
  end
  @dp_rl[i] = ans
  return ans
end
