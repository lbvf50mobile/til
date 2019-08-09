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
=begin
            OpenStruct.new({
                expr: "((2 + 2) * 2) * 3 + (2 + (2 * 2))",
                answer: 28
            }),
            OpenStruct.new({
                expr: "2+((22+2222)+(2222+222))",
                answer: 6
            }),
=end
        ].each{|x| assert_equal x.answer, Task.new.firstOperationCharacter(x.expr)}
    end
    it "should parse the expression creation the array from it" do
        assert_equal [{type: 3, pos: 0, val: [2,{type: 1, pos: 3},2]}, {type: 2, pos: 8},2], Task.new.parse_expr('(2 + 2) * 2')
    end
=begin
    it "should return element with maximum type at the most right position" do
        ans = {type: 3, pos: 0, val: [{type: 1, pos: 3}]}
        assert_equal ans , Task.new.selector_hight_prioiry( [{type: 3, pos: 0, val: [{type: 1, pos: 3}]}, {type: 2, pos: 8}])
        ans = {type: 1, pos: 3}
        assert_equal ans , Task.new.selector_hight_prioiry(  [{type: 1, pos: 3}])
    end
=end
end
