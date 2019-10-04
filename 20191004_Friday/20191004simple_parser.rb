p "alias x='ruby 20191004_Friday/20191004simple_parser.rb'" 

# Ruby simple_parser

require "minitest/autorun"
require_relative "simple_parser.rb"
require 'ostruct'

describe "simple_parser" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                input: "1",
                answer: 1
            }),
        ].each{|x| assert_equal x.answer, Task.new.simple_parser(x.input)}
    end
end
