# Leetcode: 1834. Single-Threaded CPU.
# https://leetcode.com/problems/single-threaded-cpu/
# @param {Integer[][]} tasks
# @return {Integer[]}
def get_order(tasks)
  st = tasks.map.with_index{|(a,b),i| [a,b,i]}.sort{|a,b|
    if a[0]
    
end
