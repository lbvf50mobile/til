# Leetcode: 1345. Jump Game IV.
# https://leetcode.com/problems/jump-game-iv/
# @param {Integer[]} arr
# @return {Integer}
# TLE.
def min_jumps(arr)
  require 'set'
  last_index = arr.size - 1
  common_values = {}
  arr.each_with_index do |value,index|
    common_values[value] ||= []
    common_values[value].push(index)
  end
  adjacency_list = Array.new(arr.size).map{ Set.new}
  (0...arr.size).each do |i|
    a,b = i-1, i+1
    if a.between?(0,last_index)
      adjacency_list[i].add(a)
    end
    if b.between?(0,last_index)
      adjacency_list[i].add(b)
    end
    common_values[arr[i]].each do |j|
      adjacency_list[i].add(j) if j != i
    end
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
    adjacency_list[index].each do |i|
      if ! used[i]
        used[i] = true
        steps_queue.unshift(step+1)
        index_queue.unshift(i)
      end
    end
  end
  raise "Must return in the BFS list."
end
