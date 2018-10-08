require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/ndve2n4KH7dPBksLh
3.times do puts "" end
puts "nearestGreater".cyan
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'



# to Read: https://wcipeg.com/wiki/All_nearest_smaller_values

def nearestGreater(s)
    ans = []
    s.each_index do |i|
        left = s[0...i]
        right = s[i+1..-1]
        right_index = right.index{|x| x > s[i]}
        left_index = left.rindex{|x| x > s[i]}
        ret = -1
        left_comp = left_index ? left.size - 1 - left_index : 0
        if right_index.nil? && left_index.nil?
            ret = -1
        elsif right_index && left_index.nil?
            ret = right_index + i + 1
        elsif right_index.nil? && left_index
            ret = left_index
        elsif right_index < left_comp
            ret = right_index + i + 1
        elsif right_index > left_comp
            ret = left_index
        else
            ret = left_index
        end
        ans.push ret
    end
    
    ans
end






describe "countClouds" do
    it "shold works" do
        a = [1, 4, 2, 1, 7, 6]
        assert_equal [1, 4, 1, 2, -1, 4], nearestGreater(a)
    end
  
end
