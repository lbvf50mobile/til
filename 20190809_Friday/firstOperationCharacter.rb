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
        3
    end
end
