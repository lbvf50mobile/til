p "alias x='ruby 20191206_Friday/20191206.rb'" 

# Ruby: From range 1..9 removed 1 digit, 8 element array appears, find removed digit. (@powersel)

p sum = (1..9).reduce(&:+)

pre_defined_array = [[0,0]]

(1..9).each do |x|
    p sum - x
    pre_defined_array.push([x,sum-x])
end
p pre_defined_array.to_h.invert

def find_removed arr
    hash = {0=>0, 44=>1, 43=>2, 42=>3, 41=>4, 40=>5, 39=>6, 38=>7, 37=>8, 36=>9}
    hash[arr.reduce(:+)]
end

# @sanan_yuzb solution
def find_removed_sanan arr
    (1..9).reduce(:+) - arr.reduce(:+)
end

require "minitest/autorun"

describe "solution" do
    it "should works" do
        arr = (1..9).to_a
        (1..9).each do |n|
            assert_equal n, find_removed(arr - [n])
            assert_equal n, find_removed_sanan(arr - [n])
        end

    end
end