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
     if 1 == arr.size && (arr[0][:type] == 3 )
        return tree_creator arr[0][:val]
     end
     if 1 == arr.size && ( arr[0][:type] == 0)
        return arr[0][:val]
     end
     if arr.index{|x| x[:type] == 1}
        index = arr.index{|x| x[:type] == 1}
        return [tree_creator(arr[0...index]),arr[index],tree_creator(arr[index+1..-1])]
     end
     if arr.index{|x| x[:type] == 2}
        index = arr.index{|x| x[:type] == 2}
        return [tree_creator(arr[0...index]),arr[index],tree_creator(arr[index+1..-1])]
     end
   end
   def dfs(tree)
     a = ->x{ x.class ==  Array}
     na = ->x{ x.class != Array}
     left,center,right = tree
    return dfs(right) if( a[left] && a[right])
    return center[:pos] if (na[left] && na[right])
    return dfs(left) if (a[left])
    return dfs(fight) if (a[right])
   end
    def firstOperationCharacter(expr)
        arr = parse_expr(expr)
        tree = tree_creator(arr)
        dfs(tree)
    end
end
