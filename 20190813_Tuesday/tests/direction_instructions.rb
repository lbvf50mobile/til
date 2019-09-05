describe "Befunge-93 Direction instructions" do
    it  "If the stack is empty and it is necessary to pop a value, no exception is raised; instead, 0 is produced." do
        state = {stack: [1]}
        assert_equal 1, Task.new.mega_pop(state)
        assert_equal [], state[:stack]
        assert_equal 0, Task.new.mega_pop(state)
        assert_equal [], state[:stack]
    end
    it "should move left/rigth/top/bottom" do
        state = {x_position: 0, y_position: 0, width: 3, height: 4, direction: 'left'}
        
        # moving left
        state[:direction] = 'left'
        Task.new.move_pointer(state)
        assert_equal 1, state[:x_position]
        Task.new.move_pointer(state)
        assert_equal 2, state[:x_position]
        Task.new.move_pointer(state)
        assert_equal 0, state[:x_position]
        
        # moving right
        state[:direction] = 'right'
        Task.new.move_pointer(state)
        assert_equal 2, state[:x_position]
        Task.new.move_pointer(state)
        assert_equal 1, state[:x_position]
        Task.new.move_pointer(state)
        assert_equal 0, state[:x_position]
        Task.new.move_pointer(state)
        assert_equal 2, state[:x_position]

        # moving down
        state[:direction] = 'down'
        Task.new.move_pointer(state)
        assert_equal 1, state[:y_position]
        Task.new.move_pointer(state)
        assert_equal 2, state[:y_position]
        Task.new.move_pointer(state)
        assert_equal 3, state[:y_position]
        Task.new.move_pointer(state)
        assert_equal 0, state[:y_position]
        assert_equal 2, state[:x_position]

         # moving up
         state[:direction] = 'up'
         Task.new.move_pointer(state)
         assert_equal 3, state[:y_position]
         Task.new.move_pointer(state)
         assert_equal 2, state[:y_position]
         Task.new.move_pointer(state)
         assert_equal 1, state[:y_position]
         Task.new.move_pointer(state)
         assert_equal 0, state[:y_position]
         assert_equal 2, state[:x_position]
    end
    it "should use bridge left bridge; skip next cell" do
        state = {x_position: 0, y_position: 0, width: 3, height: 4, direction: 'left'}
        Task.new.move_bridge(state)
        assert_equal 0, state[:y_position]
        assert_equal 1, state[:x_position]
        Task.new.move_bridge(state)
        assert_equal 0, state[:y_position]
        assert_equal 2, state[:x_position]
    end
    it "should use bridge right bridge; skip next cell" do
        state = {x_position: 2, y_position: 1, width: 3, height: 4, direction: 'right'}
        Task.new.move_bridge(state)
        assert_equal 1, state[:y_position]
        assert_equal 1, state[:x_position]
        Task.new.move_bridge(state)
        assert_equal 1, state[:y_position]
        assert_equal 0, state[:x_position]
    end
    it "should use bridge DOWN bridge; skip next cell" do
        state = {x_position: 2, y_position: 3, width: 3, height: 4, direction: 'down'}
        Task.new.move_bridge(state)
        assert_equal 0, state[:y_position]
        assert_equal 2, state[:x_position]
        Task.new.move_bridge(state)
        assert_equal 1, state[:y_position]
        assert_equal 2, state[:x_position]
    end
    it "should use bridge UP bridge; skip next cell" do
        state = {x_position: 2, y_position: 2, width: 3, height: 4, direction: 'up'}
        Task.new.do_sharp(state)
        assert_equal 1, state[:y_position]
        assert_equal 2, state[:x_position]
        Task.new.do_sharp(state)
        assert_equal 0, state[:y_position]
        assert_equal 2, state[:x_position]
    end

    it "methods (start moving left), (start moving right), (start moving up)" do
    end
end
