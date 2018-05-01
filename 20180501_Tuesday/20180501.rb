# Forwardable
require 'forwardable'

class Dog
    def bau
        "bau"
    end
    def run
        "run"
    end
end

dog1 = Dog.new
p dog1.run
p dog1.bau

class TheDog
    extend Forwardable
    def initialize(dog)
        @dog = dog
    end
    def_delegators :@dog, :bau, :run
end
dog2 = TheDog.new(dog1)
p dog2.run
p dog2.bau

require "minitest/autorun"

describe "Forwardable" do
    it "should delegate" do
        assert_equal dog1.run, dog2.run
    end
end
