require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/dYCH8sdnxGf5aGkez
3.times do puts "" end
puts "decodeString".cyan
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'

def decodeString(s)
    "abababab"
end


describe "decodeString" do
    it "shold works" do
        assert_equal "abababab", decodeString("4[ab]")
    end
end
