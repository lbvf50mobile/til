module ExpressionParsers
    class UpcaseParser
        def self.rule str
            # CREDIT:ACHIEVED - each element after split must be uppercase
            str.split(?:).all?{|x| x.upcase == x && !x.empty?}
        end
        def self.parse str
            ans = str.split(?:)
            {var_name: ans[0].downcase, method: ans[1].downcase }
        end
    end
end