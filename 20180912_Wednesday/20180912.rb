#!/usr/bin/env ruby

# Ruby arr.each_with_index.min

p "alias x='ruby 20180912_Wednesday/20180912.rb'"

require "minitest/autorun"
require "colorize"

def minindex(arr)
    puts "arr = #{arr.inspect}".green
    z = arr.each_with_index.min
    puts "arr.each_with_index.min == #{z.inspect}".red
    z[1]
end


describe "find index" do
    it "find minmum idex" do
        assert_equal 0, minindex([-5,1,3,4])
        assert_equal 1, minindex([-5,-11,3,4])
        assert_equal 2, minindex([-5,1,-55,4])
        assert_equal 3, minindex([-5,1,3,-88])
    end
end