describe "Befunge-93 Logical stack instructions" do
    # https://coolefriend.com/know-names-of-symbols-in-your-computer-keyboard/
    it ":: duplicate value on top of the stack" do
        state = {stack: [8,4], direction: 'left', x_position: 0, width: 3}
        Task.new.do_colon(state)
        assert_equal [8,4,4], state[:stack]
       
    end
    it "\\: swap the top stack value with the second to the top" do
        state = {stack: [8,4], direction: 'left', x_position: 0, width: 3}
        Task.new.do_back_slash(state)
        assert_equal [4,8], state[:stack]
    end
    it "$: pop value from the stack and discard it" do
        state = {stack: [8,4], direction: 'left', x_position: 0, width: 3}
        Task.new.do_dollar(state)
        assert_equal [8], state[:stack]
    end
end
