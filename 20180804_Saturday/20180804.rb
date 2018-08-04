#!/usr/bin/env ruby

# Ruby beyond array border. [] == [0][1..-1]

p "alias x='ruby 20180804_Saturday/20180804.rb'" 

require "minitest/autorun"

describe "interesting result" do
    it "should return []" do
        assert_equal [],[0][1..-1]
    end
end

require "colorize"

puts [0][1..-1].inspect.magenta + " == [0][1..-1]"