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

    it "-: subtraction; pop a, pop b, then push b - a: minus" do
        state = {stack: [4,3], direction: 'left', x_position: 0, width: 3}

        Task.new.do_minus(state)
        assert_equal [1], state[:stack] 

        Task.new.do_minus(state)
        assert_equal [-1], state[:stack]
    end
    it "*: multiplication; pop a, pop b, then push a * b: asterisk" do
        state = {stack: [4,3], direction: 'left', x_position: 0, width: 3}

        Task.new.do_asterisk(state)
        assert_equal [12], state[:stack] 

        Task.new.do_asterisk(state)
        assert_equal [0], state[:stack] 
    end
    it "/: integer division; pop a, pop b, then push b / a: slash" do
        state = {stack: [14,3], direction: 'left', x_position: 0, width: 3}

        Task.new.do_slash(state)
        assert_equal [4], state[:stack] 

        Task.new.do_slash(state)
        assert_equal [0], state[:stack]
        
        assert_raises StandardError  do
            Task.new.do_slash(state)
        end
       
    end
    it "%: modulo operation; pop a, pop b, then push b % a: slash" do
        state = {stack: [14,3], direction: 'left', x_position: 0, width: 3}

        Task.new.do_percent(state)
        assert_equal [2], state[:stack] 

        Task.new.do_slash(state)
        assert_equal [0], state[:stack]
        
        assert_raises StandardError  do
            Task.new.do_percent(state)
        end
    end

 
end
