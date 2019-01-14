p "alias x='ruby 20190114_Monday/20190114.rb'" 

# Ruby ([1]&[1,2]).any? , '.any?' is not opposite of '.empty?'

# https://docs.ruby-lang.org/en/2.0.0/Array.html#method-i-26
# https://apidock.com/ruby/Enumerable/any%3F

require 'colorize'
# https://stackoverflow.com/a/4471202/8574922
module ColoredBoolean
    def to_s
        self ? super.to_s.green : super.to_s.red
    end
end
class FalseClass
    prepend ColoredBoolean
end
class TrueClass
    prepend ColoredBoolean
end
puts "[1].empty? %s" % [[1].empty?]
puts "[1].any? %s" % [[1].any?]
puts "[].empty? %s" % [[].empty?]
puts "[].andy? %s" % [[].any?]
puts "([1]&[1,2]).any? %s "  % [([1]&[1,2]).any?]
puts "([8]&[1,2]).any? %s " % [([8]&[1,2]).any?]
puts "[false].empty? %s " % [[false].empty?]
puts "[false].any? %s " % [[false].any?]
puts "[nil].empty? %s" % [[nil].empty?]
puts "[nil].any? %s " % [[nil].any?]