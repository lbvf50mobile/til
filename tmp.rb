p %w{a b c}.each_with_index.map{|x,i| "#{x}:#{i+1}"}
p %w{a b c}.map.with_index(1){|x,i| "#{x}:#{i}"}
require "benchmark"
n = 5
Benchmark.bm do |z|
 z.report { 
     n.times do 
        %w{a b c}.each_with_index.map{|x,i| "#{x}:#{i+1}"}
    end
}
z.report{
    n.times do
        %w{a b c}.map.with_index(1){|x,i| "#{x}:#{i}"}
    end
}
end

# TODO consize explanation of Enumerable

def troll_filter message
    message.split(" ")
    .map{ |x| 
        x.chars.zip(%w{c r o a k}.cycle).map{|x,y| y}.join 
    }.join(" ")
end

def troll_filter1(message)
    message.gsub(/\w+/) { |x| "croak".each_char.cycle.take(x.size).join }
end

p troll_filter "sucks. sucks" # "croak croak"
p troll_filter1 "sucks. sucks" # "croak croak"

p "croak".each_char.cycle.take("azaza torlolo".size).join



