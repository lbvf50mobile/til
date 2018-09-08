require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/BG94ZFECSNo6Kv7XW/comments
3.times do puts "" end
puts "kthLargestElement".cyan
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'






require_relative 'tests/codesignal_tests.rb'
Tests = CodeSignalTests.tests


def count_dfs(t)
    return 0 if t.nil?
    ans = 1
    ans += count_dfs(t.left)
    ans += count_dfs(t.right)
    ans
end
def count_bfs(a)
    ans = 0
    while !a.empty?
        c = a.pop
        ans += 1
        a.push c.left if c.left
        a.push c.right if c.right
    end
    ans
end

describe "Trees" do
    it "auto test" do
       Tests.each_slice(3)do |t_json, queries, ans_json|
            skip
        end
    end
  
end
