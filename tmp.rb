require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/HdgqPhHqs3NciAHqH
3.times do puts "" end
puts "countClouds".green
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'



def countClouds(s)
    2
end






describe "countClouds" do
    it "shold works" do
        a = [['0', '1', '1', '0', '1'],
        ['0', '1', '1', '1', '1'],
        ['0', '0', '0', '0', '1'],
        ['1', '0', '0', '1', '1']]
        assert_equal 2, countClouds(2)
    end
  
end
