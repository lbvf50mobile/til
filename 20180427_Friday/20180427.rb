# Using 'superclass' inside 'class' for methods and variables. (Ain't it cool?)
class One
    @o = {me: "one"}.freeze
    def self.o
        superclass.equal?(::Object) ? @o : superclass.o.merge(@o)
    end
end
class Two < One
    @o = {me: "two"}
end

class Three < Two
    @o = {me: "three", and: "this is three"}
end

class Fore < Three
    @o = {me: "Fore", fore_pachage: "Ain't  it cool?"}
end

p One.o # {:me=>"one"}
p Two.o # {:me=>"two"}
p Three.o # {:me=>"three", :and=>"this is three"}
p Fore.o # {:me=>"Fore", :and=>"this is three", :fore_pachage=>"Ain't  it cool?"}

require "minitest/autorun"

describe "" do
    it "should merge all o up the ancestor chain" do
        assert_equal One.o, {:me=>"one"}
        assert_equal Two.o, {:me=>"two"}
        assert_equal Three.o, {:me=>"three", :and=>"this is three"}
        assert_equal Fore.o, {:me=>"Fore", :and=>"this is three", :fore_pachage=>"Ain't  it cool?"}
    end
end
