# Leetcode: 1675. Minimize Deviation in Array.
# https://leetcode.com/problems/minimize-deviation-in-array/
# @param {Integer[]} nums
# @return {Integer}
def minimum_deviation(nums)
  max_odd = 0
  nums.each do |i|
    while i.even?
      i = i/2
    end
    max_odd = i if i > max_odd
  end
  dev = []
  nums.each do |i|
    if i.odd?
      if 2*i > max_odd
        dev.push [2*i-max_odd, max_odd - i]
      else
        dev.push [Float::INFINITY, max_odd-2*i]
      end
    else
      if i < max_odd
        dev.push [Float::INFINITY, max_odd-i]
      else
        while i.even? && i > max_odd
          i = i/2
        end
        dev.push( [2*i-max_odd, max_odd - 1]) if i < max_odd
      end
    end
  end
  dev = dev.sort.reverse
  return 0 if dev.empty?
  max_down = [0] * dev.size
  curr = 0

end
