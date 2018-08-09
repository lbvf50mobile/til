require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/SKZ45AF99NpbnvgTn

puts "This is a sudoku2"

require "minitest/autorun"

def get_rows arr
    arr.clone
end
def get_cols arr
    size = arr.size
    ans = Array.new(size){Array.new(size)}
    size.times do |x|
        size.times do |y|
            ans[x][y] = arr[y][x]
        end
    end
    ans
end
def check arr
    arr.reject{|x| x == ?. }.all?{|x| arr.count(x) < 2}
end
def valid_arrays? arr
    arr.all?{|x| check(x) }
end
def get_grid arr
    border = arr.map{|x| x.each_slice(3).to_a}
    rows = (0..8).each_slice(3).to_a
    ans = []
    rows.each do |row|
        [0,1,2].each do |number|
            ans << [border[row[0]][number],
            border[row[1]][number],
            border[row[2]][number]].flatten
        end
    end
    ans
end


describe "sudoku2" do
    before do
        @arr = [[1,2],[3,4]]
        @s = [
            (1+9*0..9*1).to_a,
            (1+9*1..9*2).to_a,
            (1+9*2..9*3).to_a,
            (1+9*3..9*4).to_a,
            (1+9*4..9*5).to_a,
            (1+9*5..9*6).to_a,
            (1+9*6..9*7).to_a,
            (1+9*7..9*8).to_a,
            (1+9*8..9*9).to_a,
        ]
    end
    it "test should works" do
        assert true
        assert @arr
    end
    it "get rows should return rows" do
        assert_equal [[1,2],[3,4]], get_rows(@arr)
    end
    it "should return columns" do
        assert_equal [[1,3],[2,4]], get_cols(@arr)
    end
    it "should remove . and no duplicates" do
        assert check(['1','2','.','.'])
        refute check(['1','1',?.,?.])
    end
    it "should check arrays" do
        assert valid_arrays?([[?1,?2,?.],[?7, ?8, ?., ?.]])
        refute valid_arrays?([[?1,?2,?.,?5,?5],[?7, ?8,?2,?2, ?., ?.]])
    end
    it "check s" do
        assert_equal 9, @s.size
        assert @s.all?{|x| x.size == 9}
    end
    it "get grid" do
        g = get_grid(@s)
        assert_equal 9, g.size
        assert g.all?{|x| x.size == 9}
        assert_equal [1,2,3,10,11,12,19,20,21], g[0]
    end

end