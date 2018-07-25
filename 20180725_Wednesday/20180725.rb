
# Hash#map transforms a hash into array.

# https://www.codewars.com/kata/inverting-a-hash/ruby

p "alias x='ruby 20180725_Wednesday/20180725.rb'" 

require "minitest/autorun"

def rev h
    h.map(&:reverse).to_h
end

H = {a:?b,c:?d} # hash
AH = [[:a,?b],[:c,?d]] # hash converted to array
RH={?b=>:a, ?d=>:c} # inerted hash


describe "revert hash by reverse" do
    it "reverse hash" do
        assert_equal RH, rev(H)
    end

    it "revese by Hash\#Invert" do
        assert_equal RH, H.invert
    end

    it "map transfers hash to array" do
        assert_equal AH, H.map{|x| x}
    end
end
