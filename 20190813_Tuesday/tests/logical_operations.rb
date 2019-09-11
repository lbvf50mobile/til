describe "Befunge-93 Logical operations" do
    # https://coolefriend.com/know-names-of-symbols-in-your-computer-keyboard/
    it "!: logical NOT; pop a value, if the value = 0, push 1, otherwise push 0" do
        state = {stack: [4], direction: 'left', x_position: 0, width: 3}

        Task.new.do_exclamation(state)
        assert_equal [0], state[:stack] 
        Task.new.do_exclamation(state)
        assert_equal [1], state[:stack]
        Task.new.do_exclamation(state)
        assert_equal [0], state[:stack] 
        3.times do |i| 
            Task.new.do_exclamation(state)
            assert_equal (i.even? ? [1] : [0]), state[:stack]
        end 

        state = {stack: [], direction: 'left', x_position: 0, width: 3}
        Task.new.do_exclamation(state)
        assert_equal [1], state[:stack]

     
    end
    it "\`: greater than; pop a and b, then push 1 if b > a, otherwise 0: back quote" do
        state = {stack: [7,4,5], direction: 'left', x_position: 0, width: 3}
        Task.new.do_back_quote(state)
        assert_equal [7,0], state[:stack]
        state = {stack: [7,5,5], direction: 'left', x_position: 0, width: 3}
        Task.new.do_back_quote(state)
        assert_equal [7,0], state[:stack]
        state = {stack: [7,7,5], direction: 'left', x_position: 0, width: 3}
        Task.new.do_back_quote(state)
        assert_equal [7,1], state[:stack]

        state = {stack: [], direction: 'left', x_position: 0, width: 3}
        Task.new.do_back_quote(state)
        assert_equal [0], state[:stack]

        state = {stack: [5], direction: 'left', x_position: 0, width: 3}
        Task.new.do_back_quote(state)
        assert_equal [0], state[:stack]
    end
 
end
