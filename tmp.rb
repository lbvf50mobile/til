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
def hasDeadlock(s)
    true
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
