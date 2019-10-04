module ExpressionParsers
    class UpcaseParser
        def self.mockvalues
            {
                {var_name: 'credit', method: 'achieved' } => '1234',
                {var_name: 'credit', method: 'levelup' } => '15',
                {var_name: 'badge', method: 'levelup'} => 'Silver Badge'
            } 
        end
        def self.rule str
            # CREDIT:ACHIEVED - each element after split must be uppercase
            str.split(?:).all?{|x| x.upcase == x && !x.empty?}
        end
        def self.parse str
            # TODO: plural value
            ans = str.split(?:)
            {var_name: ans[0].downcase, method: ans[1].downcase }
        end
        def self.executor hash
            self.mockvalues hash
        end
    end
end