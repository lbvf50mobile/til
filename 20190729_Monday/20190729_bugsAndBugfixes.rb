p "alias x='ruby 20190729_Monday/20190729_bugsAndBugfixes.rb'"

# Ruby nil.to_s == ''; Regex difference between (.*) -> '' and (.+)* -> nil;

require "minitest/autorun"
require 'ostruct'

def bugsAndBugfixes(rules)
    pattern = /(\d*)d(\d+)([+-]\d+)*/
    formulas = rules.scan(pattern)

    res = 0
    for formula in formulas
        p formula
        rolls = formula[0].empty? ? 1 : formula[0].to_i
        dieType = formula[1].to_i
        formulaMax = rolls * dieType

        if not formula[2].to_s.empty?
            if formula[2][0] == "-"
                formulaMax -= formula[2][1..-1].to_i
            else
                formulaMax += formula[2][1..-1].to_i
            end
        end

        res += formulaMax
    end

    return res
end



describe "bugsAndBugfixes" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                rules: "Roll d6-3 and 4d4+3 to pick a weapon, and finish the boss with 3d7!",
                answer: 43
            }),
            OpenStruct.new({
                rules: "d6-almost 01d4+2 12d01-3 5d5-00 a valid formula",
                answer: 46
            }),
            OpenStruct.new({
                rules: "meh4d2-3D3",
                answer: 5
            }),
            OpenStruct.new({
                rules: "ad3+4, 44b-6, 5daa",
                answer: 7
            }),
            OpenStruct.new({
                rules: "4d6-L1d20-10 did4n't expect that",
                answer: 38
            }),
            OpenStruct.new({
                rules: "nothing here",
                answer: 0
            }),
        ].each{|x| assert_equal x.answer, bugsAndBugfixes(x.rules)}
    end
end