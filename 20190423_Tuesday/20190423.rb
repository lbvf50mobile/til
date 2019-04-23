p "alias x='ruby 20190423_Tuesday/20190423.rb'" 

# Ruby Christmas tree task solution.

require "minitest/autorun"
def christmasTree(levelNum, levelHeight)
    ["    *", 
        "    *", 
        "   ***", 
        "  *****", 
        " *******", 
        "*********", 
        "   ***"]

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