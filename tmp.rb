require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/3PcnSKuRkqzp8F6BN/solutions
puts "areFollowingPatterns".red

require "minitest/autorun"

require 'set'
def areFollowingPatterns(strings, patterns)
    return false if strings.size != patterns.size
    hash = {}
    values = Set.new
    patterns.zip(strings).each do |pattern,string|
        if(hash[pattern])
            return false if hash[pattern] != string
        else
            return false if values.include?(string)
            hash[pattern] = string
            values.add(string)
        end
    end
    true
end

describe "Hash" do
    it "true" do
        assert true
    end
    it "should work with first example" do
        strings = ["cat", "dog", "dog"]
        patterns = ["a", "b", "b"]
        assert areFollowingPatterns(strings, patterns) 
    end
    it "should not work with second example" do
        strings = ["cat", "dogggy", "dog"]
        patterns = ["a", "b", "b"]
        refute areFollowingPatterns(strings, patterns) 
    end
    it "should work with first example" do
        strings = ["aaa", 
            "aaa", 
            "aaa"]
        patterns = ["aaa", 
            "bbb", 
            "aaa"]
        refute areFollowingPatterns(strings, patterns) 
    end
end