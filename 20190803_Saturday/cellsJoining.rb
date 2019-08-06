class Task
    def replace(str,width)
        str = str.gsub(/^(\+-+){#{width}}/,' ')
        str[0] = ?|
        str
    end
    def cellsJoining(input)
        input[2] = replace(input[2],2)
        p input
        ["+----+--+-----+----+", 
            "|abcd|56|!@#$%|qwer|", 
            "|1234|78|^&=()|tyui|", 
            "+----+--+-----+----+", 
            "|zxcv 90|77777|stop|", 
            "|       +-----+----+", 
            "|asdf ~~|ghjkl|100$|", 
            "+-------+-----+----+"]
    end
end
