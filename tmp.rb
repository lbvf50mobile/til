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
    puts "#{i} - i #{visited} - v"
    visited[i] = true
    s[i].each do |neighbour|
        puts "#{i} hi I'm 4 ".red if i == 4
        puts "#{neighbour} and i'm pointed to #{visited[neighbour].nil?.inspect}".green if 4 == i
        if visited[neighbour].nil?
            return true if is_cycled(neighbour,visited.clone,s)
        else
            puts "And i going to retun true #{i} #{neighbour}"
            return true
        end
    end
    false 
end
def hasDeadlock(s)
    visited = {}
    s.each_index do |node|
        visited = {}
        return true if is_cycled(node,visited,s)
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
