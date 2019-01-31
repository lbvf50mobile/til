p "alias x='ruby 20190131_Thursday/20190131.rb'" 

# Ruby Object#send, **, keyword arguments;

# For @yui_meow

# Documentation: 
# https://medium.freecodecamp.org/rubys-splat-and-double-splat-operators-ceb753329a78
# https://apidock.com/ruby/Object/send
# https://robots.thoughtbot.com/ruby-2-keyword-arguments
# https://ruby-doc.org/core-2.6.1/Object.html#method-i-send

class Proxy
    def initialize(target_object)
      @object = target_object
      # ADD MORE CODE HERE
    end
  
    def method_missing(method_name, *args, **kwargs)
        p args
        p kwargs
        @object.send(method_name, *args, kwargs)
      
    end
end

class TestBest
    def call_me(a,b,name: nil,index: nil)
        answer =  {a:a,b:b,name:name,index:index}
        p answer
    end
    def boom
        p "booom"
    end
end


puts "Straightforward call:"
TestBest.new.call_me("a string", "b string",name: "The name",index: "The index")
TestBest.new.call_me(*["a","b"],**{name:"Second name",index: "Second Index"})
TestBest.new.call_me(*["a","b"],{name:"Second name",index: "Second Index"})

TestBest.new.boom()

puts "Call using Proxy:"
Proxy.new(TestBest.new).method_missing("call_me", "a string", "b string",name: "The name",index: "The index")
Proxy.new(TestBest.new).method_missing("call_me", *["a","b"],**{name:"Second name",index: "Second Index"})
Proxy.new(TestBest.new).method_missing("call_me", *["a","b"],{name:"Second name",index: "Second Index"})
begin
    Proxy.new(TestBest.new).method_missing("boom")
rescue 
    puts "Proxy cannnot call methods without arguments: #{$!.message}"
end