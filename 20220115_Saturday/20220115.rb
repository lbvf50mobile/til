# Leetcode: 1345. Jump Game IV.
# https://leetcode.com/problems/jump-game-iv/
# @param {Integer[]} arr
# @return {Integer}
# TLE.
def min_jumps(arr)
  last_index = arr.size - 1
  common_values = {}
  arr.each_with_index do |value,index|
    common_values[value] ||= []
    common_values[value].push(index)
  end
  steps_queue = [0]
  index_queue = [0]
  used = {}
  used[0] = true
  while ! steps_queue.empty?
    step = steps_queue.pop()
    index = index_queue.pop()
    if last_index == index
      return step
    end
    [index+1,index-1].each do |i|
      if (! used[i]) && i.between?(0,last_index)
        used[i] = true
        steps_queue.unshift(step+1)
        index_queue.unshift(i)
      end
    end
    value = arr[index]
    next if ! common_values[value]
    common_values[value].each do |i|
      if ! used[i]
        used[i] = true
        steps_queue.unshift(step+1)
        index_queue.unshift(i)
      end
    end
  end
  raise "Must return in the BFS list."
end
