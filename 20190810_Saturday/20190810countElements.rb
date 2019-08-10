p "alias x='ruby 20190810_Saturday/20190810countElements.rb'" 

# Ruby countElements

require "minitest/autorun"
require_relative "countElements.rb"
require 'ostruct'

describe "countElements" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                inputString: "[[0, 20], [33, 99]]",
                answer: 4
            }),
        ].each{|x| assert_equal x.answer, Task.new.countElements(x.inputString)}
    end
end
