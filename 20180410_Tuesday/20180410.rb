# Set and https://www.codewars.com/kata/harry-and-the-mathematicians-chicken/train/ruby
require "minitest/autorun"
require "set"

def chicken_options(n)
    return [0] if n.class != Fixnum
    box = [0,3,6,10]
    a = Set.new([0])
    j = 0
    (n+5).times do
      a.to_a.each{|q| box.each{ |x| a << (x+q) } }
    end
     a.to_a.sort.select{|x| x <= n}
end

def c1(n)
    return [0] if n.class != Fixnum
    box = [0,3,6,10]
    a = Set.new([0])
    n.times do
      a.to_a.each{|q| box.each{ |x| a << (x+q) } }
    end
     a.to_a.sort.select{|x| x <= n}
end

def c2(n)
    return [0] if n.class != Fixnum
    box = [3,6,10]
    a = Set.new([0])
    n.times do
      a.to_a.each{|q| box.each{ |x| a << (x+q) } }
    end
     a.to_a.sort.select{|x| x <= n}
end

# remember how do each seq appears
Thread.current[:seq_log] = {0=>"0"}
def c3_rember_seq(n)
    return [0] if n.class != Fixnum
    box = [3,6,10]
    a = Set.new([0])
    n.times do
      a.to_a.each do |q| 
            box.each do |x| 
                if !a.add?(x+q) 
                    Thread.current[:seq_log][x+q] = Thread.current[:seq_log][q] + " + #{x}"
                end
            end
        end
    end
     a.to_a.sort.select{|x| x <= n}
end

c3_rember_seq(200)

def print_value x
    seq = Thread.current[:seq_log]
    p "#{x} == %s" % seq[x]
end

print_value 62
print_value 127
print_value 142
print_value 88
print_value 121

p "For N == 176"
expected = [0, 3, 6, 9, 10, 12, 13, 15, 16, 18, 19, 20, 21, 23, 24, 26, 27, 29, 30, 33, 36, 39, 40, 42, 43, 45, 46, 48, 49, 50, 51, 53, 54, 56, 57, 59, 60, 63, 66, 69, 70, 72, 73, 75, 76, 78, 79, 80, 81, 83, 84, 86, 87, 89, 90, 93, 96, 99, 100, 102, 103, 105, 106, 108, 109, 110, 111, 113, 114, 116, 117, 119, 120, 123, 126, 129, 130, 132, 133, 135, 136, 138, 139, 140, 141, 143, 144, 146, 147, 149, 150, 153, 156, 159, 160, 162, 163, 165, 166, 168, 169, 170, 171, 173, 174, 176] 
got =[0, 3, 6, 9, 10, 12, 13, 15, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176]
p "Expected size %s" % expected.size
p "Got size %s" % got.size
p "Difference is %s" % (got.size - expected.size)
#(got-expected).each{|x| print_value x}
#exit

  describe "chicket_options" do
    it "answer must be equal" do
        100.times do |n|
            one = chicken_options(n)
            two = c1(n)
            three = c2(n)
            for4 = c3_rember_seq(n)
            assert_equal one,two, "they must be equal 1,2"
            assert_equal one,three, "they must be equal 1,3"
            assert_equal one,for4, "they must be equal 1,4"
        end
    end
  end

