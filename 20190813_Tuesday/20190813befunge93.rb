p "alias x='ruby 20190813_Tuesday/20190813befunge93.rb'" 

# Ruby befunge93

require "minitest/autorun"
require_relative "befunge93.rb"
require 'ostruct'

describe "befunge93" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                input: "1",
                answer: 1
            }),
        ].each{|x| assert_equal x.answer, Task.new.befunge93(x.input)}
    end
end
