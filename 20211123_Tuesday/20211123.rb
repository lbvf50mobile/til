# Leetcode: 952. Largest Component Size by Common Factor.
# https://leetcode.com/problems/largest-component-size-by-common-factor/
# @param {Integer[]} nums
# @return {Integer}
def largest_component_size(nums)
  # Solution would be based on:
  # https://leetcode.com/problems/largest-component-size-by-common-factor/discuss/819919/Python-Union-find-solution-explained
  n = nums.size
  df = DSU.new(n)
  primes = {}
  nums.each_with_index do |num,i|
    pr_set = primes_set(num)
    pr_set.each{|q| primes[q]||=[], primes[q].push(i)}
  end
  primes.values.each do |indices|
    (0...indices.size-1).each do |i|
      df.union(indices[i],indices[i+1])
    end
  end

end

class DSU
  def initialize(n)
    @p = Array.new(n.size+2,0)
  end
  def find(x)
    @p[x] = find(@p[x]) if x != @p[x]
    @p[x]
  end
  def union(x,y)
    xr,yr = find(x),find(y)
    @p[xy] = yr
  end
end
