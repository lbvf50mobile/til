require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/5vXzdE9yzjsoMZ9sk
3.times do puts "" end
puts "swapLexOrder".cyan
puts ""

require "minitest/autorun"

def dsu(unions)
    (0..unions.size-2).each do |i|
        base = unions[i]
        next if base.nil?
        unions.each_with_index do |element, j|
            next if i == j
            next if element.nil?
            if base.any?{|x| element.include?(x)}
                unions[i] = (base + element).uniq
                unions[j] = nil
            end
        end
    end
    unions.compact.map{|x| x.sort}
end
def swapLexOrder(str, pairs)
    pairs = dsu(pairs)
    str = str.chars
    # Save array of [indexes,char_by_these_indexes]
    pairs = pairs.map do |ids|
        chars = ids.reduce([]){|s,i| s.push(str[i-1]); s}
        [ids.map{|x| x-1},chars.sort.reverse]
    end
    pairs.each do |x|
        x[0].each_with_index do |pos,i|
            str[pos] = x[1][i]
        end
    end
    str.join
end

Tests = [
    "abdc",
    [[1, 4], [3, 4]],
    "dbca",
=begin   
    "abdc",
    [[1,4], 
    [3,4]],
    "dbca",
    "abcdefgh",
    [[1,4], [7,8]],
    "dbcaefhg",
    #----------------
    "acxrabdz",
    [[1,3], [6,8], [3,8], [2,7]],
    "zdxrabca",
    #---------------
    "z",
    [],
    "z",
    #------------
    "dznsxamwoj",
    [[1,2], [3,4], [6,5], [8,10]],
    "zdsnxamwoj",
    #---

    "fixmfbhyutghwbyezkveyameoamqoi",
    [[8,5], 
 [10,8], 
 [4,18], 
 [20,12], 
 [5,2], 
 [17,2], 
 [13,25], 
 [29,12], 
 [22,2], 
 [17,11]],
 "fzxmybhtuigowbyefkvhyameoamqei",
=end
]

describe "Hash" do
 it "auto test" do
    Tests.each_slice(3){|str,pairs,ans| assert_equal ans, swapLexOrder(str, pairs)}
 end
end

describe "Hash" do
    it "true" do
        assert true
    end
    it "dsu" do
        assert_equal [[1,2],[3,4]],dsu([[1,2],[3,4]])
        assert_equal [[1,2,3]],dsu([[1,2],[2,3,]])
        assert_equal [[1,2,4]],dsu([[1,2],[4,2]])
        assert_equal  [[1,4,5,8]],dsu([[1,8],[4,5],[8,4]])
    end
end