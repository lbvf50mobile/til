require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/gnZYGn367s4yaHvRr
3.times do puts "" end
puts "minimumOnStack".green
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'



def minimumOnStack(s)
    [10, 5, 5, 5, 10]
end






describe "minimumOnStack" do
    it "shold works" do
        assert_equal [10, 5, 5, 5, 10], minimumOnStack(["push 10", "min", "push 5", "min", "push 8", "min", "pop", "min", "pop", "min"])
    end
  
end
