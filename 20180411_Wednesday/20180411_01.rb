# Array#find_index, String#index, Fixnum#abs
require "minitest/autorun"
def coords(arr,char)
    y = arr.find_index {|x| x.index char}
    x = arr[y].index char
    {x: x, y: y}
end
def distance(map)
    z = map.split("\n")
    c = coords(z,?C)
    m = coords(z,?m)
    (c[:x]-m[:x]).abs + (c[:y]-m[:y]).abs
end

def cat_mouse(map, steps)
    distance(map) <= steps ? "Caught!" : "Escaped!"
rescue
    "boring without two animals"
end

describe "cat_mouse" do
    it "Сaugth!" do
map = """\
..C......
.........
....m...."""
assert_equal(cat_mouse(map, 5), "Caught!")
    end
    it "Escaped!" do
 map = """\
.C.......
.........
......m.."""
        assert_equal(cat_mouse(map, 5), "Escaped!")
    end
    it "boring" do
map = """\
..C......
.........
........."""
assert_equal(cat_mouse(map, 5), "boring without two animals")
    end
end





