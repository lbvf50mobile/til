module ExpressionParsers
    class CapitalizeParser
        def self.mockvalues
            {
                {var_name: 'credit', method: 'achieved' } => '1234',
                {var_name: 'credit', method: 'levelup' } => '15',
                {var_name: 'badge', method: 'levelup'} => 'Silver Badge'
            } 
        end
        def self.rule str
            ans = str.split(?:)
            rule1 = ans.size > 1
            rule2 = ans.all?{|x| !x.empty?}
            rule3 = ans[0] == ans[0].capitalize
            rule4 = ans[-1].strip[0] == ?[ && ans[-1].strip[-1] = ?]
            rule1 && rule2 && rule3 && rule4
        end
        def self.parse str
           true
        end
        def self.executor hash
            true
        end
    end
end