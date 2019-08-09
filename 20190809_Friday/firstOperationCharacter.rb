class Task
    def parse_expr(expr)
        answer = []
        level = 0
        expr.chars.each_with_index do |x,i|
         case x
         when ?+
            answer.push({type: 1, pos: i, level: level})
         when ?*
            answer.push({type: 2, pos: i, level: level})
         when ?(
           level += 1
         when ?)
            level -= 1
         end
        end
        answer
    end
 

    def firstOperationCharacter(expr)
        arr = parse_expr(expr)
        max = arr.max{|x| x[:level]}[:level]
        arr = arr.select{|x| x[:level] == max}
        max = arr.max{|x| x[:type]}[:type]
        arr = arr.select{|x| x[:type] == max}
        arr[0][:pos]
    end
end
