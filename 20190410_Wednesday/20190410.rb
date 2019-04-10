p "alias x='ruby 20190410_Wednesday/20190410.rb'" 

# Ruby yield_self, avg.

class Object
    def yield_self(*args)
        yield(self, *args)
    end
end

class Array
    def sum
        self.reduce(:+)
    end
    def avg
        self.sum.to_f/self.size
    end
end

p (1..3).to_a.avg
p (1..3).to_a.yield_self{|v| v.sum.to_f/v.size}
