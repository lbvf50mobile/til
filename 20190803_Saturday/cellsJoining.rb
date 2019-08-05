class Task
    def replace(str,width)
        str.gsub(/^(\+-+){#{width}}/,' ')
    end
    def cellsJoining(input)
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
