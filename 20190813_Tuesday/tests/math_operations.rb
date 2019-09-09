describe "Befunge-93 Math Operations" do
    # https://coolefriend.com/know-names-of-symbols-in-your-computer-keyboard/
    it "+: addition; pop a, pop b, then push a + b" do

        # +: addition; pop a, pop b, then push a + b: plus
        state = {stack: [4,3], direction: 'left', x_position: 0, width: 3}

        Task.new.do_plus(state)
        assert_equal [7], state[:stack] 

        Task.new.do_plus(state)
        assert_equal [7], state[:stack]
    end

 
end
