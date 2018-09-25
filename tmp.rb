require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/aRwxhGcmvhf6vKPCp
3.times do puts "" end
puts "simplifyPath".green
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'

def simplifyPath(x)
    x = x.split('/')
    s = []
    x.each do |dir|
        if dir.empty?
            next
        elsif /\.\./ === dir
            s.pop
        elsif /^[[:alnum:]]+$/ === dir
            s.push dir
        end
    end
    '/' + s.join('/')
end


describe "simplifyPath" do
    it "shold works" do
        assert_equal "/home/a/b/c", simplifyPath("/home/a/./x/../b//c/")
        assert_equal "/", simplifyPath("/")
    end
end
