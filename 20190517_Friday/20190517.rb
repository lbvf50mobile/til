p "alias x='ruby 20190517_Friday/20190517.rb'" 

# Ruby get cells from twodimentional array.
require 'pp'
require 'minitest/autorun'
require 'colorize'

a = [(1..5).to_a]*5
b = [(1..5).to_a]*5
c = [(1..5).to_a]*5
d = [(1..5).to_a]*5
add_index = ->(x,letter){ x.map.with_index(0){|x,i| x.map{|y| y.to_s + letter + i.to_s}}}
a = add_index[a,?a]
puts "this is 'A' array".green
p a

b = add_index[b,?b]
c = add_index[c,?c]
d = add_index[d,?d]

ac = a + c
bd = b + d
   
big_array = ac.map.with_index(0){|x,i| x + bd[i]}
puts "this is 'Big' array".green
pp big_array

def get_cells(array, rows, columns)
    cells = []
    array.each_slice(rows) do |rs|
        rs.transpose.each_slice(columns) do |arr|
            cells.push arr.transpose
        end
    end
    cells
end

describe "it should split" do
    it 'returns 4 arrays 5x5' do
        assert_equal [a,b,c,d], get_cells(big_array,5,5)
        assert_equal a, get_cells(big_array,5,5)[0]
    end
end