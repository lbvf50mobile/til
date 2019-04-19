p "alias x='ruby 20190418_Thursday/20190418.rb'" 
require "minitest/autorun"

# Ruby solutions of Combs problem.

def combs(c1, c2)
    conv = ->(x){ x.chars.map{|y| ?* == y ? 1 : 0} }
    c1 = conv.(c1)
    c2 = conv.(c2)
    size = c1.size + c2.size
    a,b = c1,c2
    a,b = c2,c1 if c2.size < c1.size
    (0..size).reduce([]) do |memo,i|
        left = a.size - i > 0 ? a.size - i : 0
        right =  i - b.size > 0 ? i - b.size : 0
        s = left + b.size + right
        s1 = [0]*i + a + [0]*(a.size + b.size - i)
        s2 = [0]*a.size + b + [0]*a.size
        memo.push(s) if s1.zip(s2).map{|x,y| x+y}.all?{ |x| x < 2}
        memo
    end.min
end
def combs_by_kov(c1,c2)
    a = c1.gsub(/./){|x| x == "*" ? 1 : 0}.to_i(2)
    b = c2.gsub(/./){|x| x == "*" ? 1 : 0}.to_i(2)
    i = 0
    j = 0
    p [c1,a.to_s(2)]
    (0..[c1.size,c2.size].max).each do |ii|
        tmp = a << ii
        p [ii,tmp.to_s(2), b.to_s(2), 0 != tmp & b]
    end
    while 0 != a << i & b do
        p i
        i += 1
    end
    while 0 != b << j & a do
        j += 1
    end
    l1 = [c1.size+i,c2.size].max
    l2 = [c2.size+j,c1.size].max
    [l1,l2].min
end

tests = [
    {c1: '*..*', c2: '*.*', answer: 5},
    {c1: "*...*", c2: "*.*", answer: 5}
]

describe "RunnersMeetings" do
    it "shold works" do
        tests.each do |test|
            assert_equal test[:answer], combs(test[:c1],test[:c2])
            assert_equal test[:answer], combs_by_kov(test[:c1],test[:c2])
        end
    end
end