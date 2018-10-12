require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/ZTqKqNwK6ZL6GDpJ5/description
3.times do puts "" end
puts "hasDeadlock".green
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'

# https://www.geeksforgeeks.org/detect-cycle-in-a-graph/
def is_cycled(i,visited, visited_global,s)
    visited[i] = true
    visited_global[i] = true
    s[i].each do |neighbour|
        if visited[neighbour].nil?
            return true if is_cycled(neighbour,visited.clone, visited_global,s)
        else
            return true
        end
    end
    false 
end
def hasDeadlock(s)
    visited_global = {}
    s.each_index do |node|
        visited = {}
        if visited_global[node].nil?
            return true if is_cycled(node,visited, visited_global,s)
        end
    end
    false
end

describe "countClouds" do
    it "shold works" do
        a = [[1], 
        [2], 
        [3,4], 
        [4], 
        [0]]
        assert hasDeadlock(a)
        b = [[1,2,3], 
        [2,3], 
        [3], 
        []]
        refute hasDeadlock(b)
    end
  
end
