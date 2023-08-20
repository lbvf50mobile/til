# Leetcode: 1203. Sort Items by Groups Respecting Dependencies.
# https://leetcode.com/problems/sort-items-by-groups-respecting-dependencies/
# @param {Integer} n
# @param {Integer} m
# @param {Integer[]} group
# @param {Integer[][]} before_items
# @return {Integer[]}
def sort_items(n, m, group, before_items)
  # Based on:
  # https://leetcode.com/problems/sort-items-by-groups-respecting-dependencies/solution/
  
  # If an item belongs to zero group, assign it a unque group id.
  group_id = m
  (0...n).each do |i|
    if -1 == group[i]
      group[i] = group_id
      group_id += 1
    end
  end

  # Sort all items regardless of group dependencies.
  item_graph = Array.new(n){ Array.new()}
  item_indegree = Array.new(n,0)

  # Sort all groups regardlesof item dependencies.
  group_graph = Array.new(group_id){ Array.new()}
  group_ingegree = Array.new(group_id, 0)

  n.times do |curr|
    before_items[curr].each do |prev|
      # Each (prev -> curr) represents an edge in the item graph.
      item_graph[prev].push(curr)
      item_indegree[curr] += 1

      # If then belong to different groups, add an edge in the group graph.
      if group[curr] != group[prev]
        group_graph[group[prev]].push(group[curr])
        group_ingegree[group[curr]] += 1
      end
    end
  end

  # Topological sort nodes in graph, return [] if a cycle exists.
  topological_sort = ->(graph, indegree){
    visited = []
    stack = graph.size.times
      .select{|node| 0 == indegree[node]}
    while ! stack.empty?
      curr = stack.pop()
      visited.push(cur)
    end
  }
    
end
