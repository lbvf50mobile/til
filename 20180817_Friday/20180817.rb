#!/usr/bin/env ruby

# Ruby using Array#drop.

# https://apidock.com/ruby/Array/drop
# https://www.rubypigeon.com/posts/minitest-cheat-sheet/

p "alias x='ruby 20180817_Friday/20180817.rb'" 

require "minitest/autorun"

require "colorize"
a = [1,2,3,4,5]
puts "this is a #{a.inspect}".green
puts "this is drop(2) #{a.drop(2).inspect}".red
puts "this is a after drop #{a.inspect}".green

describe "Array#drop" do
    it "removes n elemets from array but array sill the same" do
        a = [1,2,3,4,5]
        assert_equal [1,2,3,4,5], a.drop(0)
        assert_equal [2,3,4,5], a.drop(1)
        assert_equal [3,4,5], a.drop(2)
        assert_equal [4,5], a.drop(3)
        assert_equal [5], a.drop(4)
        assert_equal [], a.drop(5)
        assert_equal [], a.drop(1000)
        assert_raises (ArgumentError){ a.drop(-1)}
        refute_equal [],a
        assert_equal [1,2,3,4,5],a
    end
end