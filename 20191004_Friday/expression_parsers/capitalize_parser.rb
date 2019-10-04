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
            true
        end
        def self.parse str
           true
        end
        def self.executor hash
            true
        end
    end
end