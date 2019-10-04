module ExpressionParsers
    class UpcaseParser
        def self.rule str
            # CREDIT:ACHIEVED - each element after split must be uppercase
            str.split(?:).all?{|x| x.upcase == x && !x.empty?}
        end
    end
end