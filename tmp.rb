require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/njfXsvjRthFKmMwLC
puts "containCloseNums".blue

require "minitest/autorun"

def delta_less_than_or_equal(array:nil,element:nil, delta: nil)
    array.each do |x|
        return true if delta >= (x-element).abs
    end
    false
end

def containsCloseNums(nums, k)
    hash = {}
    nums.each_with_index do |value,index|
        if hash[value]
            return true if delta_less_than_or_equal(array: hash[value], 
                element: index,
                delta: k)
            hash[value].push(index)
        else
            hash[value] = [index]
        end
    end
    false
end

describe "Hash" do
    it "true" do
        assert true
    end
    it "delta  less than or equal x" do
        assert delta_less_than_or_equal(array:[1,2,3],element:5, delta: 2)
        refute delta_less_than_or_equal(array:[1,2,3],element:55,delta: 7)
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