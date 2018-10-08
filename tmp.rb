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





def nearestGreater(s)
    ans = []
    puts "#{s.inspect}".green
    s.each_index do |i|
        left = s[0...i]
        right = s[i+1..-1]
        right_index = right.index{|x| x > s[i]}
        left_index = left.rindex{|x| x > s[i]}
        ret = -1
        puts "#{i}:#{s[i]} left=#{left_index.inspect} right=#{right_index.inspect}".green
        left_comp = left_index ? left.size - 1 - left_index : 0
        if right_index.nil? && left_index.nil?
            puts "-1".red
            ret = -1
        elsif right_index && left_index.nil?
            puts "right".green
            ret = right_index + i + 1
        elsif right_index.nil? && left_index
            puts "left".red
            ret = left_index
        elsif right_index < left_comp
            puts "right".green
            ret = right_index + i + 1
        elsif right_index > left_comp
            puts "left".red
            ret = left_index
        else
            puts "left".red
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
