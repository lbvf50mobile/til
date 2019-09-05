class Task
    def mega_pop state
        state[:stack].pop || 0
    end
    def move_pointer state
        x, y = state[:x_position], state[:y_position]
        width, height = state[:width], state[:height]
        case state[:direction]
        when 'left'
             state[:x_position] = (x+1) % width
        when 'right'
            state[:x_position] =  x == 0 ? width - 1 : x - 1
        when 'up'
            state[:y_position] =  y == 0 ? height - 1 : y - 1
        when 'down'
            state[:y_position] = (y+1) % height
        else raise "There no such direciton"
        end
    end
    # https://coolefriend.com/know-names-of-symbols-in-your-computer-keyboard/
    # direction instructions:
    # #: bridge; skip next cell: sharp
    def do_sharp s; move_pointer(s); end
    # >: start moving right
    def do_greater_than(s); s[:direction] = 'right'; end
    # <: start moving left: less_than
    def do_less_than(s); s[:direction] = 'left'; end
    # v: start moving down: v
    def do_v(s); s[:direction] = 'down'; end
    # ^: start moving up: carat
    def do_carat(s); s[:direction] = 'up'; end

    def befunge93(input)
        # Read the symbol

        # implement action

        # Exit if time to

        # move pointer
        "Hello World!\n"
    end
end
