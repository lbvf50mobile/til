p "alias x='ruby 20190730_Tuesday/20190730.rb'" 

# Ruby Regex#scan returns a flat array. ^\[(\d+):(\d+)\.(\d+)\]( (.*)){0,1}$ => [["...","...","...","...","..."]];
require "minitest/autorun"
require_relative "lrc2subrip.rb"
require 'ostruct'

describe "Pawn Race" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                lrcLyrics: ["[00:12.00] Happy birthday dear coder,", 
                        "[00:17.20] Happy birthday to you!"],
                songLength: "00:00:20",
                answer: ["1", 
                    "00:00:12,000 --> 00:00:17,200", 
                    "Happy birthday dear coder,", 
                    "", 
                    "2", 
                    "00:00:17,200 --> 00:00:20,000", 
                    "Happy birthday to you!"]
            }),
        ].each{|x| assert_equal x.answer, Task.new.lrc2subRip(x.lrcLyrics, x.songLength)}
    end
end