require "colorize"
require "pp"


require 'pp'
require 'colorize'

require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'

class Short
    attr_reader :x
    def initialize(x: nil)
        @x ||= x
    end
end
class Long
    attr_reader :x
    def initialize(x: nil)
        @x = x unless x
    end
end

def short_test(type)
    tmp = [nil,rand(5000)].sample
        if tmp
            assert tmp, type.new(x:tmp).x
        else
            refute type.new(x:tmp).x
        end
end



describe "what faster" do
    it "short and long" do
        7.times{
            n = 10000000
            time = Benchmark.measure{
                n.times{ short_test(Short)}
            }
            puts "%02f Short Using ||=".red % time.real
            time = Benchmark.measure{
                n.times{ short_test(Long)}
            }
            puts "%02f Long Using unless".green % time.real
        }
    end
end

