class A
    def call_say(obj)
        if obj
            obj.say
        else
            say
        end
    end

    def self_private_call
        self.say
    end

    private
    def say
        p "private save: hi"
    end
end

a = A.new
b = A.new
p "A Object cannot call a private method on another object of the same class."
p "-- call private method via wrapper (YES)"
a.call_say(nil)
p "-- call straightforward private method (NO)"
begin
a.say
rescue
   p "cannot call straightfoward private method"
   p $!.message
end
p "-- Call one private method of the object of same class (NO) "
begin
    a.call_say(b)
rescue
    p $!.message
end
p "-- Call a private method of the self, but when self passed as argument (NO)"
begin
    a.call_say(a)
rescue
    p $!.message
end

p "-- Call self.prvate_method (NO)"
begin
a.self_private_call
rescue
    p $!.message
end
