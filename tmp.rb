p %w{a b c}.each_with_index.map{|x,i| "#{x}:#{i+1}"}
p %w{a b c}.map.with_index(1){|x,i| "#{x}:#{i}"}
require "benchmark"
n = 500_000
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