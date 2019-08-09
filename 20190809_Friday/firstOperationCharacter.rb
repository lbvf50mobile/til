class Task
    def parse_expr(expr)
        answer = []
        stack = []
        current_sub = answer
        expr.chars.each_with_index do |x,i|
         case x
         when ?+
            current_sub.push({type: 1, pos: i})
         when ?*
            current_sub.push({type: 2, pos: i})
         when ?(
            stack.push current_sub
            new_sub = []
            current_sub.push({type: 3, pos: i, val: new_sub})
            current_sub = new_sub
         when ?)
            current_sub = stack.pop
         end
        end
        answer
    end
    def selector_hight_prioiry arr
        sorter = arr.map.with_index{|x,i| [x[:type],x[:pos],i]}.sort{|a,b| a[0] == b[0] ? a[1] - b[1] : a[0] - b[0]}
        hight = sorter[-1][2]
        arr[hight]
    end
    def firstOperationCharacter(expr)
        3
    end
end
