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