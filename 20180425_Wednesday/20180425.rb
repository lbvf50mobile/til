# Module methods and ::
def Object.hi
    "Hi"
end

module Z
    class Object < ::Object
    end
    def Object.hi
        "Zi"
    end
    def self.hi
        ::Object.hi + " " + Object.hi
    end
end

p Object.hi
p Z.hi

module Why
   
    def Object.hi
        "Why"
    end
    def self.hi
        ::Object.hi + " " + Object.hi
    end
end

p Object.hi
p Why.hi
