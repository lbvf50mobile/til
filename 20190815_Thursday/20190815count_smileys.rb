p "alias x='ruby 20190815_Thursday/20190815count_smileys.rb'" 

# Ruby count_smileys

require "minitest/autorun"
require_relative "count_smileys.rb"
require 'ostruct'

describe "count_smileys" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                input: [':)', ';(', ';}', ':-D'],
                answer: 2
            }),
            OpenStruct.new({
                input: [';D', ':-(', ':-)', ';~)'],
                answer: 3
            }),
            OpenStruct.new({
                input: [';]', ':[', ';*', ':$', ';-D'],
                answer: 1
            }),
        ].each{|x| 
            assert_equal x.answer, Task.new.count_smileys(x.input)
            assert_equal x.answer, Task.new.count_smileys1(x.input)
            assert_equal x.answer, Task.new.count_smileys2(x.input)
            assert_equal x.answer, Task.new.count_smileys3(x.input)
        }
    end
end
