p "alias x='ruby 20190813_Tuesday/20190813befunge93.rb'" 

# Ruby befunge93

require "minitest/autorun"
require_relative "befunge93.rb"
require 'ostruct'

describe "befunge93" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                program: ["               v", 
                    "v  ,,,,,\"Hello\"<", 
                    ">48*,          v", 
                    "\"!dlroW\",,,,,,v>", 
                    "25*,@         > "],
                answer: "Hello World!\n"
            }),
        ].each{|x| assert_equal x.answer, Task.new.befunge93(x.program)}
    end

    it  "If the stack is empty and it is necessary to pop a value, no exception is raised; instead, 0 is produced." do
        bomba = {stack: []}
        assert_equal 0, Task.new.mega_pop(bomba)
        assert_equal [], bomba[:stack]
    end
end
