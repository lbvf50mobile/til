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
def is_cycled(i,visited,s)
    visited[i] = true
    s[i].each do |neighbour|
        if visited[neighbour].nil?
            if is_cycled(neighbour,visited,s)
                p "1"
                return true
            end 
        else
            p "2"
            return true
        end
    end
    false 
end
def hasDeadlock(s)
    visited = {}
    
    s.each_index do |node|
        if visited[node].nil?
            return true if is_cycled(node,visited,s)
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
