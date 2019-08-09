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
    it "should parse the expression creation the array from it" do
        assert_equal [{type: 3, pos: 0, val: [{type: 1, pos: 3}]}, {type: 2, pos: 8}], Task.new.parse_expr('(2 + 2) * 2')
    end
end
