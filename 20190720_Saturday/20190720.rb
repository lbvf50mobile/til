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
            }),
            OpenStruct.new({
                white: "a2",
                black: "b3",
                toMove: "w",
                answer: 'white'
            }),
            OpenStruct.new({
                white: "a2",
                black: "b3",
                toMove: "b",
                answer: 'black'
            }),
            OpenStruct.new({
                white: "h2",
                black: "g3",
                toMove: "w",
                answer: 'white'
            }),
            OpenStruct.new({
                white: "h2",
                black: "g3",
                toMove: "b",
                answer: 'black'
            }),
            OpenStruct.new({
                white: "b6",
                black: "a7",
                toMove: "w",
                answer: 'white'
            }),
            OpenStruct.new({
                white: "b6",
                black: "a7",
                toMove: "b",
                answer: 'black'
            }),
            OpenStruct.new({
                white: "g6",
                black: "h7",
                toMove: "w",
                answer: 'white'
            }),
            OpenStruct.new({
                white: "g6",
                black: "h7",
                toMove: "b",
                answer: 'black'
            }),
            OpenStruct.new({
                white: "e3",
                black: "d7",
                toMove: "b",
                answer: 'black'
            }),
            OpenStruct.new({
                white: "a7",
                black: "h2",
                toMove: "w",
                answer: 'white'
            }),
            OpenStruct.new({
                white: "c5",
                black: "b7",
                toMove: "w",
                answer: 'black'
            }),

        ].each{|x| assert_equal x.answer, PawnRace.new.pawnRace(x.white, x.black, x.toMove)}
    end
end