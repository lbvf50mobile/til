require 'colorize'
class Task
    def border_replacer(str,left,right,columns_amount)
        # ^((?:\+-+){1})((?:\+-+){2})
        regex = /^((?:\+-+){#{left}})((?:\+-+){#{right-left+1}})(.*)/
        str = str.gsub(regex){|match|
            $1 + (" " * $2.size) +$3
            
        }
        str[0] = ?| if 0 == left
        str[str.size - 1] = ?| if right == columns_amount - 1
        str
    end
    def column_replacer(str,left,right)
        arr = str.split("|")
        str = arr.each_with_index.reduce(""){|memo,(x,i)|
            if i.between?(left+1,right)
                memo + (x + " ")
            else
                memo + x + ?|
            end
        }
    end
    def bottom_replacer(str)
        str.gsub(/[^|]/,?-).gsub(?|,?+)
    end
    def cellsJoining(input,coords)
        debbug = false
        get_columns_amount = ->arr{arr[0].count(?+)-1}
        columns_amount = get_columns_amount[input]
        shows_columns_amount(columns_amount,debbug)
        bottom, left = coords[0]
        top, right = coords[1]

        start, finish = top+1, bottom
        
        hash_positions = {bottom: bottom, top: top, left: left, right: right}
        shows_bounds(hash_positions,debbug)
        shows_start_finish({start: start, finish: finish},debbug)
        border_index = -1
        row_index = -1
        display = ""

        input.each_with_index do |x,i|
            is_border = (?+ == x[0])
            if is_border 
                border_index += 1
                row_index += 1
            end
            display = x

            if row_index.between?(start, finish) && is_border
                input[i] = border_replacer(x,left,right,columns_amount)
                display = border_replacer(x,left,right,columns_amount)
            end
            if border_index.between?(top,bottom) && (! is_border)
                input[i] = column_replacer(x,left,right)
                display = column_replacer(x,left,right)
            end
            if row_index == finish+1 && is_border
                input[i] = bottom_replacer(input[i-1])
                display = bottom_replacer(input[i-1])
            end
            


            puts "%s %s %d %d" % [display, is_border.inspect, border_index, row_index] if debbug
        end

        input
            
    end
    # ---------------------------------
    def shows_columns_amount amount, debbug
        puts "columns amount: %s" % [amount.to_s.green] if debbug
    end
    def shows_bounds h, debbug
        arr = [h[:top],h[:bottom],h[:left], h[:right]].map(&:to_s).map(&:green)
        puts "top: %s, bottom: %s, left: %s, right: %s" % arr if debbug
    end
    def shows_start_finish h, debbug
        arr = [h[:start],h[:finish]].map(&:to_s).map(&:cyan)
        puts "start: %s, finish: %s" % arr if debbug
    end
    
end
