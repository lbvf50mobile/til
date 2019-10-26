describe "Befunge-93 Output instructions" do
    
    # https://coolefriend.com/know-names-of-symbols-in-your-computer-keyboard/
    it ".: pop value and output it as an integer followed by a space" do
        state = {
            stack: [8,4,"x"], 
            x_position: 2, 
            y_position: 1, 
            width: 3, 
            height: 4, 
            direction: 'right', 
            program: [""],
            output: ""}
        Task.new.do_dot(state)
        assert_equal "#{?x.ord} ", state[:output]
        Task.new.do_dot(state)
        assert_equal "#{?x.ord} 4 ", state[:output]
        Task.new.do_dot(state)
        assert_equal "#{?x.ord} 4 8 ", state[:output]
        Task.new.do_dot(state)
        assert_equal "#{?x.ord} 4 8 0 ", state[:output]
       
    end
    it ",: pop value and output it as ASCII character" do
        # 
        state = {
            stack: [?B.ord,?A.ord,"x"], 
            x_position: 2, 
            y_position: 1, 
            width: 3, 
            height: 4, 
            direction: 'right', 
            program: [""],
            output: ""}
            Task.new.do_comma(state)
        assert_equal "x", state[:output]
        Task.new.do_comma(state)
        assert_equal "xA", state[:output]
        Task.new.do_comma(state)
        assert_equal "xAB", state[:output]
        
    end
    
end
