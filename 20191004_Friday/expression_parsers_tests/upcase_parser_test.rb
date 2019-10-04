describe "upcase_parser" do
    it "Upcase parser should correctly reply on a rule" do
        assert ExpressionParsers::CapitalizeParser.rule('Samplebox:APP:[$caption=Нажмите здесь для получения скидки]')
        refute ExpressionParsers::CapitalizeParser.rule('No')
    end
    it "Upcase parser should return correct value" do
        answer = {var_name: 'credit', method: 'achieved'}
        assert_equal  answer, ExpressionParsers::UpcaseParser.parse('CREDIT:ACHIEVED')
    end
    it "Upcase executor must have a hardcoded elements" do
        [
            ['CREDIT:ACHIEVED','1234'],
            ['CREDIT:LEVELUP','15'],
            ['BADGE:LEVELUP','Silver Badge']
        ].each do |input,output|
                hash = ExpressionParsers::UpcaseParser.parse(input)
                answer = ExpressionParsers::UpcaseParser.executor(hash)
            assert_equal output, answer
        end
    end
end
