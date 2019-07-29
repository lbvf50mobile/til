p "alias x='ruby 20190729_Monday/20190729_repetition_encription.rb'"

# Ruby Regex Backreference.

# https://www.regular-expressions.info/refcapture.html

require "minitest/autorun"
require 'ostruct'

def repetitionEncryption(letter)
    pattern = /([a-z]+)[\W]+\1/i
    return letter.scan(pattern).size
end


describe "repetitionEncryption" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                letter: "Hi, hi Jane! I'm so. So glad to to finally be able to write - WRITE!! - to you!",
                answer: 4
            }),
            
        ].each{|x| assert_equal x.answer, repetitionEncryption(x.letter)}
    end
end