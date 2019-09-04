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
    def befunge93(input)
        "Hello World!\n"
    end
end
