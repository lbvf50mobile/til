# Leetcode: 952. Largest Component Size by Common Factor.
# https://leetcode.com/problems/largest-component-size-by-common-factor/
# @param {Integer[]} nums
# @return {Integer}
def largest_component_size(nums)
  ans = 0
  uf = Uf.new(nums.max)
  count = {}
  nums.each do |a|
    (2..(Math.sqrt(a)+1).to_i).each do |num|
      if 0 == a%num
        uf.union(a,num)
        uf.union(a,a/num)
      end
    end
  end
  nums.each do |a|
    pa = uf.find(a)
    count[pa] ||= 0
    count[pa] += 1
    ans = count[pa] if ans < count[pa]
  end
  ans
end

class Uf
  def initialize(n)
    @prnt = (0..n+1).to_a
  end
  def union(u,v)
    pu, pv = find(u), find(v)
    return false if pu == pv
    @prnt[pu] = pv
    true
  end
  def find(u)
    if @prnt[u] != u 
      @prnt[u] = find(@prnt[u])
    end
    @prnt[u]
  end
end
