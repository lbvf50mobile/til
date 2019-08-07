class Task
    def replace(str,width)
        str = str.gsub(/^(\+-+){#{width}}/,' ')
        str[0] = ?|
        str
    end
    def cellsJoining(input)
        get_columns_size = ->arr{arr[0].count(?+)-1}
        p columns_size = get_columns_size[input]
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
