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
            ['Samplebox:APP:[$caption=Нажмите здесь для получения скидки]','[Нажмите здесь для получения скидки](https://samplebox.test)'],
        ].each do |input,output|
                hash = ExpressionParsers::CapitalizeParser.parse(input)
                answer = ExpressionParsers::CapitalizeParser.executor(hash)
            assert_equal output, answer
        end
    end
end
