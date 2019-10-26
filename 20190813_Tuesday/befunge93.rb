class Task
    def mega_pop state
        state[:stack].pop || 0
    end
    def move_pointer state
        x, y = state[:x_position], state[:y_position]
        width, height = state[:width], state[:height]
        case state[:direction]
        when 'right'
             state[:x_position] = (x+1) % width
        when 'left'
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
    # <: start moving left: less_thanmov
    def do_less_than(s); s[:direction] = 'left'; end
    # v: start moving down: v
    def do_v(s); s[:direction] = 'down'; end
    # ^: start moving up: carat
    def do_carat(s); s[:direction] = 'up'; end

    # https://coolefriend.com/know-names-of-symbols-in-your-computer-keyboard/
    # conditional instructions:
    # _: pop a value; move right if value = 0, left otherwise: underscore
    def do_underscore state 
        x = mega_pop state
        if 0 == x # move right if value = 0
            state[:x_position] = (state[:x_position]+1) % state[:width]
        else
            state[:x_position] =  state[:x_position] == 0 ? state[:width] - 1 : state[:x_position] - 1
        end
    end
    # |: pop a value; move down if value = 0, up otherwise: bar
    def do_bar state
        value, y = mega_pop(state), state[:y_position]
        height = state[:height]
        if 0 == value # move down if value = 0
            state[:y_position] = (y+1) % height
        else # up otherwise
            state[:y_position] =  y == 0 ? height - 1 : y - 1
        end
    end

    # Math Operations
    # +: addition; pop a, pop b, then push a + b
    def do_plus s;  a = mega_pop(s); b = mega_pop(s); s[:stack].push(a+b); end
    # -: subtraction; pop a, pop b, then push b - a
    def do_minus s;  a = mega_pop(s); b = mega_pop(s); s[:stack].push(b-a); end
    # *: multiplication; pop a, pop b, then push a * b
    def do_asterisk s;  a = mega_pop(s); b = mega_pop(s); s[:stack].push(a*b); end
    # /: integer division; pop a, pop b, then push b / a
    def do_slash s;  a = mega_pop(s); b = mega_pop(s); s[:stack].push(b/a); end
    # %: modulo operation; pop a, pop b, then push b % a: percent
    def do_percent s;  a = mega_pop(s); b = mega_pop(s); s[:stack].push(b%a); end

    # Logical Operations
    # !: logical NOT; pop a value, if the value = 0, push 1, otherwise push 0
    def do_exclamation s; mega_pop(s) == 0 ? s[:stack].push(1) : s[:stack].push(0) ; end
    # \`: greater than; pop a and b, then push 1 if b > a, otherwise 0: back quote
    def do_back_quote s; a  = mega_pop(s); b = mega_pop(s); b > a ? s[:stack].push(1) : s[:stack].push(0) end

    # ! TODO: Stack instrucion implemented wia mega_pop, empty stack last value is 0!
    
    # Stack Instrutions:
    # :: duplicate value on top of the stack
    def do_colon s; a = mega_pop(s); s[:stack] += [a,a] end
    # \\: swap the top stack value with the second to the top
    def do_back_slash s;  a = mega_pop(s); b = mega_pop(s); s[:stack] += [a,b] end
    # $: pop value from the stack and discard it
    def do_dollar s; mega_pop(s) end



    def befunge93(input)
        # Read the symbol

        # Exit if time to

        # implement action And Move if needs to! (conditional instructions force move)
        

        
        "Hello World!\n"
    end
end
