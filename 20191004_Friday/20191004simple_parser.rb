p "alias x='ruby 20191004_Friday/20191004simple_parser.rb'" 

# Ruby simple_parser

require "minitest/autorun"
require_relative "simple_parser.rb"
require 'ostruct'

# Parsers to work with expressions insde the %{}
require_relative "expression_parsers/upcase_parser.rb"
require_relative "expression_parsers/capitalize_parser.rb"

describe "simple_parser" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                input: "Вам начислено %{CREDIT:ACHIEVED} баллов. Вам не хватает %{CREDIT:LEVELUP} баллов до получения %{BADGE:LEVELUP}.\n\n%{Samplebox:APP:[$caption=Нажмите здесь для получения скидки]}",
                answer: "Вам начислено 1234 баллов. Вам не хватает 15 баллов до получения Silver Badge.\n\n[Нажмите здесь для получения скидки](https://samplebox.test)"
            }),
        ].each{|x| assert_equal x.answer, Task.new.simple_parser(x.input)}
    end
end

describe "upcase_parser" do
    it "Upcase parser should correctly reply on a rule" do
        assert ExpressionParsers::UpcaseParser.rule('CREDIT:ACHIEVED')
        refute ExpressionParsers::UpcaseParser.rule('No ')
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

