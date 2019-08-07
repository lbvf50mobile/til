require 'colorize'
class Task
    def replace(str,width)
        str = str.gsub(/^(\+-+){#{width}}/,' ')
        str[0] = ?|
        str
    end
    def cellsJoining(input,coords)
        
        get_columns_size = ->arr{arr[0].count(?+)-1}
        p columns_size = get_columns_size[input]
        bottom, left = coords[0]
        top, right = coords[1]

        start, finish = top+1, bottom
        
        hash_positions = {bottom: bottom, top: top, left: left, right: right}
        shows_bounds hash_positions
        shows_start_finish(start: start, finish: finish)
        border_index = -1
        row_index = -1

        input.each do |x|
            is_border = (?+ == x[0])
            if is_border 
                border_index += 1
                row_index += 1
            end
            puts "%s %s %d %d" % [x, is_border.inspect, border_index, row_index]
        end

        ["+----+--+-----+----+", 
            "|abcd|56|!@#$%|qwer|", 
            "|1234|78|^&=()|tyui|", 
            "+----+--+-----+----+", 
            "|zxcv 90|77777|stop|", 
            "|       +-----+----+", 
            "|asdf ~~|ghjkl|100$|", 
            "+-------+-----+----+"]
    end
    # ---------------------------------
    def shows_bounds h
        arr = [h[:top],h[:bottom],h[:left], h[:right]].map(&:to_s).map(&:green)
        puts "top: %s, bottom: %s, left: %s, right: %s" % arr
    end
    def shows_start_finish h
        arr = [h[:start],h[:finish]].map(&:to_s).map(&:cyan)
        puts "start: %s, finish: %s" % arr
    end
    
end
