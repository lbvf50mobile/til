describe "Befunge-93 Conditional Instructions" do
    # https://coolefriend.com/know-names-of-symbols-in-your-computer-keyboard/
    it "_: pop a value; move right if value = 0, left otherwise" do

        # _: pop a value; move right if value = 0, left otherwise: underscore
        state = {stack: [1], direction: 'left', x_position: 0, width: 3}

        Task.new.do_underscore(state)
        assert_equal [], state[:stack] 
        assert_equal 2, state[:x_position] # move left if x != 0

        Task.new.do_underscore(state)
        assert_equal [], state[:stack]
        assert_equal 0, state[:x_position] 
    end
 
end
