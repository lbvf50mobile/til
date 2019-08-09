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

            OpenStruct.new({
                expr: "((2 + 2) * 2) * 3 + (2 + (2 * 2))",
                answer: 28
            }),

            OpenStruct.new({
                expr: "2+((22+2222)+(2222+222))",
                answer: 6
            }),

            OpenStruct.new({
                expr: "2 + 3 * 45 * 56 + 198 + 10938 * 102938 + 5",
                answer: 6
            }),



        ].each{|x| assert_equal x.answer, Task.new.firstOperationCharacter(x.expr)}
    end
    it "should parse the expression creation the array from it" do
        assert_equal [{type: 1, pos: 3, level: 1, group: 1},{type: 2, pos: 8, level: 0, group: 0}], Task.new.parse_expr('(2 + 2) * 2')
    end
=begin
    it 'should create trees' do
        assert_equal [[2,{type: 1, pos: 3},2], {type: 2, pos: 8},2], Task.new.tree_creator([{type: 3, pos: 0, val: [{type:0, val:2},{type: 1, pos: 3},{type:0, val:2}]}, {type: 2, pos: 8},{type:0, val:2}])
    end

    it "should return element with maximum type at the most right position" do
        ans = {type: 3, pos: 0, val: [{type: 1, pos: 3}]}
        assert_equal ans , Task.new.selector_hight_prioiry( [{type: 3, pos: 0, val: [{type: 1, pos: 3}]}, {type: 2, pos: 8}])
        ans = {type: 1, pos: 3}
        assert_equal ans , Task.new.selector_hight_prioiry(  [{type: 1, pos: 3}])
    end
=end
end
