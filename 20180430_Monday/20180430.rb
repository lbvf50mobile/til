# Using Struct for a fast inheritance to a class.

class Person < Struct.new(:name)
    def hi your_name
        "Hi, #{your_name}. My name is #{name}."
    end
end

jonh = Person.new("John")
p jonh.hi("Jim")

require "minitest/autorun"

describe Person do
    it "ansesr on hi" do
        assert_equal "Hi, Jim. My name is John.", Person.new("John").hi("Jim")
    end
end
