class Task
    def countElements(inputString)
        s = inputString
        strings = s.scan(/\"[^\"]*\"/).size
        s.gsub!(/\"[^\"]*\"/,"")
        booleans = s.scan(/true|false/).size
        digits = s.scan(/\d+/).size
        strings + booleans + digits
    end
end
