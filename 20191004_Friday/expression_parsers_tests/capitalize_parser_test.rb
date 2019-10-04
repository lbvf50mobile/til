describe "capitilize_parser" do
    it "Upcase parser should correctly reply on a rule" do
        assert ExpressionParsers::CapitalizeParser.rule('Samplebox:APP:[$caption=Нажмите здесь для получения скидки]')
        refute ExpressionParsers::CapitalizeParser.rule('No')
    end
    it "Upcase parser should return correct value" do
        answer = {modules_chain: ['Samplebox','APP'], params: {caption:"Нажмите здесь для получения скидки"}}
        assert_equal  answer, ExpressionParsers::CapitalizeParser.parse('Samplebox:APP:[$caption=Нажмите здесь для получения скидки]')
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
