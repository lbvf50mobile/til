p "alias x='ruby 20190809_Friday/20190809firstOperationCharacter.rb'" 

# Ruby firstOperationCharacter

require "minitest/autorun"
require_relative "firstOperationCharacter.rb"
require 'ostruct'

describe "firstOperationCharacter" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                expr: "(2 + 2) * 2",
                answer: 3
            }),
        ].each{|x| assert_equal x.answer, Task.new.firstOperationCharacter(x.expr)}
    end
end
