p "alias x='ruby 20190706_Saturday/tests.rb'" 
require 'minitest/autorun'
require_relative 'amazon.rb'

describe 'Amazon' do
it "should show checkmate" do
    require "ostruct"
    [
        OpenStruct.new({king: "d3", amazon: "e4", answer: 5}),
        OpenStruct.new({king: "a1", amazon: "g5", answer: 0})
    ].each{|x| assert_equal x.answer, Amazon.new.checkmate(x.king,x.amazon).size }
    
end
it "should show amazonCheckmate" do
    require "ostruct"
    [
        OpenStruct.new({king: "d3", amazon: "e4", answer: [5, 21, 0, 29]}),
        OpenStruct.new({king: "a1", amazon: "g5", answer: [0, 29, 1, 29]}),
        OpenStruct.new({king: "a1", amazon: "e4", answer: [1, 32, 1, 23]}),
    ].each{|x| assert_equal x.answer, Amazon.new.amazonCheckmate(x.king, x.amazon) }
    
end
end