describe "Befunge-93 Conditional Instructions" do
    # https://coolefriend.com/know-names-of-symbols-in-your-computer-keyboard/
    it "_: pop a value; move right if value = 0, left otherwise" do

        # _: pop a value; move right if value = 0, left otherwise: underscore
        state = {stack: [1], direction: 'left', x_position: 0, width: 3}

        Task.new.do_underscore(state)
        assert_equal [], state[:stack] 
        assert_equal 2, state[:x_position] # move left if x != 0
        assert_equal 'left', state[:direction]

        Task.new.do_underscore(state)
        assert_equal [], state[:stack]
        assert_equal 0, state[:x_position]
        assert_equal 'left', state[:direction] 
    end

    it "|: pop a value; move down if value = 0, up otherwise: bar" do
        state = {stack: [1], direction: 'left', x_position: 0, y_position: 3, width: 3, height: 4}
        Task.new.do_bar(state)
        assert_equal [], state[:stack]
        assert_equal 2, state[:y_position] # up otherwise 3 => 2
        
        Task.new.do_bar(state)
        assert_equal [], state[:stack]
        Task.new.do_bar(state)
        assert_equal [], state[:stack] # move down if value = 0 2 => 3 => 0
        assert_equal 0, state[:y_position]
        assert_equal 'left', state[:direction]
    end
 
end
