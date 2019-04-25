p "alias x='ruby 20190423_Tuesday/20190423.rb'" 
require 'colorize'

# Ruby Christmas tree task solution.

require "minitest/autorun"
def decorator arr
    arr.map{|x| counter=0; y = x.gsub(/ /){|z| counter+=1}}
end
def christmasTree(levelNum, levelHeight)
    max_width = 5 + (levelHeight - 1) * 2
    line_hash2str = ->(h){ ' '*h[:empty] + ?* * h[:asterisks]}
    arr_to_str = ->(arr){ arr.map{|x| line_hash2str.(x)}}
    # First level
    line_size = ->(line_number){max_width - (levelHeight  - line_number)}
    blank_amount = ->(line_number){ levelHeight - line_number }
    asterisks_amount = ->(line_number){line_size.(line_number) - blank_amount.(line_number)}
    level1_hash_proc = ->(){(1..levelHeight).reduce([]) do |memo,line_number| 
        value =  {empty: blank_amount.(line_number), asterisks: asterisks_amount.(line_number)}
        memo.push(value) 
        memo
    end
    }
    level1_hash = level1_hash_proc.()

    # Crown
    crown_top = ->(){ {empty:max_width-levelHeight-2, asterisks:1}}
    crown_bottom = ->(){ {empty: max_width-levelHeight-3, asterisks: 3}}
    crown_hash = [crown_top.(),crown_top.(),crown_bottom.()]

    # Foot
    half = (max_width-1)/2
    foot_half = levelHeight.odd? ? (levelHeight-1)/2 : levelHeight/2
    foot_empty = half - foot_half
    foot_line_hash = {empty: foot_empty, asterisks: 1+foot_half*2 }
    foot_hash = ([1]*levelNum).map{|x| foot_line_hash.clone}

    # Generae levels
    empty_extend_array = [crown_hash, level1_hash.clone, foot_hash]
    levels = []
    extend_by_1_empty = ->(arr){ arr.map{ |x| x.map{|y| y[:empty] += 1 ; y  }}}
    extend_by_2_asterisks = ->(arr){ arr.map{|x|  x[:asterisks] += 2 ; x}}
    (2..levelNum).each do |level|
        empty_extend_array = extend_by_1_empty.(empty_extend_array)
        new_level =  extend_by_2_asterisks.(level1_hash_proc.())
        levels += new_level
    end
    result_array = empty_extend_array[0] + empty_extend_array[1]  + levels + empty_extend_array[2]
    

   # hash to lines 
    result_array = arr_to_str.(result_array)

    decorator(result_array).each{|x| puts x}

    result_array

end

tests = [
    {levelNum: 1, levelHeight: 3, ans: ["    *", 
        "    *", 
        "   ***", 
        "  *****", 
        " *******", 
        "*********", 
        "   ***"]},
        {levelNum: 2, levelHeight: 4, ans: ["      *", 
            "      *", 
            "     ***", 
            "    *****", 
            "   *******", 
            "  *********", 
            " ***********", 
            "   *******", 
            "  *********", 
            " ***********", 
            "*************", 
            "    *****", 
            "    *****"]}
]

describe "Christmas tree" do
    it "works" do
        tests.each do |test|
            result_array = decorator(test[:ans]) 
            result_array.each{|x| puts x.green}
            assert_equal test[:ans], christmasTree(test[:levelNum], test[:levelHeight])
        end
    end
end