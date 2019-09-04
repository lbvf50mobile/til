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
        bomba = {stack: [1]}
        assert_equal 1, Task.new.mega_pop(bomba)
        assert_equal [], bomba[:stack]
        assert_equal 0, Task.new.mega_pop(bomba)
        assert_equal [], bomba[:stack]
    end
    it "should move left/rigth/top/bottom" do
        bomba = {x_position: 0, y_position: 0, width: 3, height: 4, direction: 'left'}
        
        # moving left
        bomba[:direction] = 'left'
        Task.new.move_pointer(bomba)
        assert_equal 1, bomba[:x_position]
        Task.new.move_pointer(bomba)
        assert_equal 2, bomba[:x_position]
        Task.new.move_pointer(bomba)
        assert_equal 0, bomba[:x_position]
        
        # moving right
        bomba[:direction] = 'right'
        Task.new.move_pointer(bomba)
        assert_equal 2, bomba[:x_position]
        Task.new.move_pointer(bomba)
        assert_equal 1, bomba[:x_position]
        Task.new.move_pointer(bomba)
        assert_equal 0, bomba[:x_position]
        Task.new.move_pointer(bomba)
        assert_equal 2, bomba[:x_position]

        # moving down
        bomba[:direction] = 'down'
        Task.new.move_pointer(bomba)
        assert_equal 1, bomba[:y_position]
        Task.new.move_pointer(bomba)
        assert_equal 2, bomba[:y_position]
        Task.new.move_pointer(bomba)
        assert_equal 3, bomba[:y_position]
        Task.new.move_pointer(bomba)
        assert_equal 0, bomba[:y_position]
        assert_equal 2, bomba[:x_position]

         # moving up
         bomba[:direction] = 'up'
         Task.new.move_pointer(bomba)
         assert_equal 3, bomba[:y_position]
         Task.new.move_pointer(bomba)
         assert_equal 2, bomba[:y_position]
         Task.new.move_pointer(bomba)
         assert_equal 1, bomba[:y_position]
         Task.new.move_pointer(bomba)
         assert_equal 0, bomba[:y_position]
         assert_equal 2, bomba[:x_position]
    end
end
