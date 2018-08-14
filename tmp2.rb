require "colorize"
require "minitest/autorun"


describe "The Ruby Pointers" do
    it "dose not change if reasign variable in method" do
        a = [1,2]
        def reasign array
            array = [1]
            array
        end
        assert_equal [1], reasign(a)
        assert_equal [1,2], a
    end
    it "it change the data into the object" do
        a = [1,2]
        def change_object object
            object.push 3
            object
        end
        assert_equal [1,2,3], change_object(a)
        assert_equal [1,2,3], a
    end
end