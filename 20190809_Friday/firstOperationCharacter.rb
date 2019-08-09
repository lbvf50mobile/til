class Task
    def parse_expr(expr)
        answer = []
        stack = []
        current_sub = answer
        tmp = nil
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
         when /\d/
            # time to start
            tmp = tmp.to_i + x.to_i
            if i == expr.chars.size - 1 || ! ( /\d/ === expr.chars[i+1] )
                current_sub.push({type: 0, val: tmp})
                tmp = nil
            end
         end
        end
        answer
    end
   def tree_creator arr
     if 1 == arr.size && arr[0][:type] == 3
        return tree_creator arr[0][:val]
     end
     if arr.index{|x| x[:type] == 1}
        index = arr.index{|x| x[:type] == 1}
        []
     end
   end

    def firstOperationCharacter(expr)
        3
    end
end
