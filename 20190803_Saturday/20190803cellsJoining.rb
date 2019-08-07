p "alias x='ruby 20190803_Saturday/20190803cellsJoining.rb'" 

# Ruby cellsJoining

require "minitest/autorun"
require_relative "cellsJoining.rb"
require 'ostruct'

describe "cellsJoining" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                table: ["+----+--+-----+----+", 
                    "|abcd|56|!@#$%|qwer|", 
                    "|1234|78|^&=()|tyui|", 
                    "+----+--+-----+----+", 
                    "|zxcv|90|77777|stop|", 
                    "+----+--+-----+----+", 
                    "|asdf|~~|ghjkl|100$|", 
                    "+----+--+-----+----+"],
                    coords: [[2,0], 
                    [1,1]],
                answer: ["+----+--+-----+----+", 
                    "|abcd|56|!@#$%|qwer|", 
                    "|1234|78|^&=()|tyui|", 
                    "+----+--+-----+----+", 
                    "|zxcv 90|77777|stop|", 
                    "|       +-----+----+", 
                    "|asdf ~~|ghjkl|100$|", 
                    "+-------+-----+----+"]
            }),
        ].each{|x| assert_equal x.answer, Task.new.cellsJoining(x.table,x.coords)}
    end
end
