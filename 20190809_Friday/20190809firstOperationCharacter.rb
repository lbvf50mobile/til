p "alias x='ruby 20190809_Friday/20190809firstOperationCharacter.rb'" 

# Ruby firstOperationCharacter

require "minitest/autorun"
require_relative "firstOperationCharacter.rb"
require 'ostruct'

describe "firstOperationCharacter" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                input: "1",
                answer: 1
            }),
        ].each{|x| assert_equal x.answer, Task.new.firstOperationCharacter(x.input)}
    end
end
