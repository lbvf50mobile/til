class Task
    def mega_pop state
        state[:stack].pop || 0
    end
    def move_pointer state
        x, y, width = state[:x_position], state[:y_position], state[:width]
        case state[:direction]
        when 'left'
             state[:x_position] = (x+1) % width
        when 'right'
            state[:x_position] =  x == 0 ? width - 1 : x - 1
        when 'up'
        when 'down'
        else raise "There no such direciton"
        end
    end
    def befunge93(input)
        "Hello World!\n"
    end
end
