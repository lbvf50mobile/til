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
def is_cycled(i,visited,recStack,s)
    visited[i] = true
    recStack[i] = true
    s[i].each do |neighbour|
        if visited[neighbour].nil?
            return true if is_cycled(neighbour,visited,recStack,s)
        else
            recStack[neighbour] = true
            return true
        end
    end
    recStack[i] = nil
    false 
end
def hasDeadlock(s)
    visited = []
    recStack = []
    s.each_index do |node|
        if visited[node].nil?
            return true if is_cycled(node,visited,recStack,s)
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
    end
  
end
