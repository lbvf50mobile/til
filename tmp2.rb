# https://www.codewars.com/kata/592e830e043b99888600002d
def encode x
    x.ord - 96
end
def code(str, num)
    num = num.to_s.chars.map{|x| x.to_i}
    str.chars.map{ |x| x = x.ord - 96 + num[0]; num.rotate!; x  }
end

p code('scout',1939)
p code("masterpiece",1939)

require 'minitest/autorun'
describe "Encode" do
    it "Example from example" do
        assert_equal([ 20, 12, 18, 30, 21], code('scout',1939))
        assert_equal([ 14, 10, 22, 29, 6, 27, 19, 18, 6, 12, 8], code("masterpiece",1939))
    end
end
