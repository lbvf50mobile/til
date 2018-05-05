# Forwardable: def_delegator. Add new name for a method.
require 'forwardable'

class Lion
    def sound
        "grrr"
    end
end

class SuperLion
    extend Forwardable
    def_delegator :@lion, :sound, :roar
    def initialize
        @lion = Lion.new
    end
end

require "minitest/autorun"

describe "something" do
    it "lion sound" do
        assert_equal "grrr", Lion.new.sound
    end
    it "SuperLion roar" do
        assert_equal "grrr", SuperLion.new.roar
    end
end