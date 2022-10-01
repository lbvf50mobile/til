# Leetcode: 218. The Skyline Problem.
# https://leetcode.com/problems/the-skyline-problem/
# @param {Integer[][]} buildings
# @return {Integer[][]}
# Endless loop.
def get_skyline(buildings)
  # Based on:
  # https://leetcode.com/problems/the-skyline-problem/discuss/2642224/Python-two-heaps-to-maintain-the-max-height
  change_point = []
  buildings.each do |s,e,h|
    # 1 means the start of the building.
    # -1 means the end of the buidling.
    change_point.push([s,1,h])
    change_point.push([e,-1,h])
  end
  change_point.sort!{|a,b|
    if a[0] != b[0]
      a[0] <=> b[0]
    elsif a[1] != b[1]
      b[1] <=> a[1]
    else
      b[2] <=> a[2]
    end
  }
  res = []
  heap = MaxHeap.new([])
  remove_heap = MaxHeap.new([])
  change_point.each_with_index do |(pos,flag,h),i|
    if 1 == flag
      heap.push(h)
    else
      remove_heap.push(h)
    end
    while 0 != remove_heap.size || heap.max == remove_heap.max
      heap.pop
      remove_heap.pop
    end
    if 0 == heap.size 
      res.push([pos,0])
    else
      if 0 == i || i == (change_point.size - 1) || (heap.max != res[-1][1] && pos != change_point[i+1][0])
        res.push([pos,heap.max])
      end
    end
  end
  res
end
