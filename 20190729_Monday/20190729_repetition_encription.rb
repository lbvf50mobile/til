p "alias x='ruby 20190729_Monday/20190729_repetition_encription.rb'"

# Ruby Regex Backreference.

# https://www.regular-expressions.info/refcapture.html

require "minitest/autorun"
require 'ostruct'

def repetitionEncryption(letter)
    pattern = /(?:[^a-z]|^)(\b[a-z]+\b)[^a-z]+\1(?:[^a-z]|$)/i
    p letter.scan(pattern)
    return letter.scan(pattern).size
end


describe "repetitionEncryption" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                letter: "Hi, hi Jane! I'm so. So glad to to finally be able to write - WRITE!! - to you!",
                answer: 4
            }),
            OpenStruct.new({
                letter: "Everything is fine, fine perfectly here. Here I have fun (fun all the day!) days. Although I miss you, so please please, Jane, write, write me whenever you can! Can you do that? That is the only (!!ONLY!!) thing I ask from you, you sunshine.",
                answer: 9
            }),
            OpenStruct.new({
                letter: "ho-ho--he-he",
                answer: 2
            }),
            OpenStruct.new({
                letter: "WeLl wElL",
                answer: 1
            }),
            
        ].each{|x| assert_equal x.answer, repetitionEncryption(x.letter)}
    end
end