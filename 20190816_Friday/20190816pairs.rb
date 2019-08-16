p "alias x='ruby 20190816_Friday/20190816pairs.rb'" 

# Ruby pairs

require "minitest/autorun"
require_relative "pairs.rb"
require 'ostruct'

describe "pairs" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                input: [1, 2, 5, 6, 5, 2],
                answer: 2
            }),
            OpenStruct.new({
                input: [1, 2, 2, 20, 6, 20, 2, 6, 2],
                answer: 4
            }),
            OpenStruct.new({
                input: [0, 0, 0, 0, 0, 0, 0],
                answer: 3
            }),
            OpenStruct.new({
                input: [1000, 1000],
                answer: 1
            }),
            OpenStruct.new({
                input: [1000],
                answer: 0
            }),
            OpenStruct.new({
                input: [],
                answer: 0
            }),


        ].each{|x| assert_equal x.answer, Task.new.pairs(x.input)}
    end
end
