p "alias x='ruby 20190423_Tuesday/20190423.rb'" 

# Ruby Christmas tree task solution.

require "minitest/autorun"
def christmasTree(levelNum, levelHeight)
    max_width = 5 + (levelHeight - 1) * 2
    line_size = ->(line_number){max_width - (levelHeight  - line_number)}
    blank_amount = ->(line_number){ levelHeight - line_number }
    asterisks_amount = ->(line_number){line_size.(line_number) - blank_amount.(line_number)}
    crown = ["    *", 
        "    *", 
        "   ***"]
    level1 = (1..levelHeight).reduce([]) do |memo,line_number| 
       value =  [" "] * blank_amount.(line_number) + [?*]*asterisks_amount.(line_number)
       memo.push( value.join) 
       memo
    end
    foot = ["   ***"] 
    crown + level1 + foot

end

tests = [
    {levelNum: 1, levelHeight: 3, ans: ["    *", 
        "    *", 
        "   ***", 
        "  *****", 
        " *******", 
        "*********", 
        "   ***"]}
]

describe "Christmas tree" do
    it "works" do
        tests.each do |test|
            assert_equal test[:ans], christmasTree(test[:levelNum], test[:levelHeight])
        end
    end
end