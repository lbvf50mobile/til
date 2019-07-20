p "alias x='ruby 20190720_Saturday/20190720.rb'" 

require "minitest/autorun"
require_relative "pawn_race.rb"
require 'ostruct'

describe "Pawn Race" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                white: "e2",
                black: "e7",
                toMove: "w",
                answer: 'draw'
            })
        ].each{|x| assert_equal x.answer, PawnRace.new.pawnRace(x.white, x.black, x.toMove)}
    end
end