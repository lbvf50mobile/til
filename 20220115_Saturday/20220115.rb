# Leetcode: 1345. Jump Game IV.
# https://leetcode.com/problems/jump-game-iv/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 710 ms, faster than 100.00% of Ruby online submissions for Jump Game IV.
# Memory Usage: 227.2 MB, less than 100.00% of Ruby online submissions for Jump Game IV.
# @param {Integer[]} arr
# @return {Integer}
def min_jumps(arr)
  @d = false
  puts "input: #{arr}" if @d
  last_index = arr.size - 1
  return 0 if arr.size <= 1
  graph = {}
  arr.each_with_index do |value,index|
    graph[value] ||= []
    graph[value].push(index)
  end
  puts "graph: #{graph.inspect}" if @d
  layer = [0]
  used = {}
  used[0] = true
  step = 0
  while ! layer.empty?
    nxt = []
    layer.each do |i|
      puts  "i: #{i}" if @d
      return step if last_index == i
      [i+1,i-1].each do |j|
        if j.between?(0,last_index) && (!used[j])
          used[j] = true
          nxt.push(j)
        end
      end
      puts "i=#{i}, arr[i] = #{arr[i]}" if @d
      graph[arr[i]].each do |j|
        if ! used[j]
          used[j] = true
          nxt.push(j)
        end
      end
      # Most important line!
      graph[arr[i]].clear()
    end
    puts "step #{step}: #{nxt.inspect}" if @d
    step += 1
    layer = nxt
  end
  raise "Must return in the BFS list."
end
