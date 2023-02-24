# Leetcode: 1675. Minimize Deviation in Array.
# https://leetcode.com/problems/minimize-deviation-in-array/
# @param {Integer[]} nums
# @return {Integer}
def minimum_deviation(nums)
  # Based on:
  # https://leetcode.com/problems/minimize-deviation-in-array/discuss/952857/JavaC%2B%2BPython-Priority-Queue
  pq = MaxHeap.new([])
  res = Float::INFINITY
  # (a & -a) returns the lowest bit of a (even number)
  # a / (a & -a) gives the smallest odd number that can divide a
  # https://leetcode.com/problems/minimize-deviation-in-array/discuss/952857/JavaC++Python-Priority-Queue/1084605
  calc = ->x{ return x/(x&(-x))}
  max = calc[nums[0]]
  nums.each do |x|
    tmp = calc[x]
    max = tmp if tmp > max
    pq.push([tmp,x])
  end
  while pq.size == nums.size
    a,a1 = pq.pop()
    res = [res, max - a1].min
    if a.odd? || a < a1
      max = [max,a*2].max
      pq.push([a*2,a1])
    end
  end
  return res
end
