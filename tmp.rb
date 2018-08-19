require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/njfXsvjRthFKmMwLC
puts "containCloseNums".blue

require "minitest/autorun"


def containsCloseNums(nums, k)
    hash = {}
    nums.each_with_index do |value,index|
        if hash[value]
            return true if k >= (hash[value] - index).abs
            hash[value] = index
        else
            hash[value] = index
        end
    end
    false
end

describe "Hash" do
    it "true" do
        assert true
    end
  
    it "should work with first exaple" do
        nums = [0, 1, 2, 3, 5, 2]
        k = 3
        assert containsCloseNums(nums, k)
    end
    it "should not work with second exaple" do
        nums = [0, 1, 2, 3, 5, 2]
        k = 2
        refute containsCloseNums(nums, k)
    end
end