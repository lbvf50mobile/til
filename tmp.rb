require 'benchmark'


p n = 5000

arr = Array.new(n).map{
    subarr = Array.new(n,false)
    subarr[rand(n)] = true
    subarr
}

Benchmark.bm do |x|
  
 
  x.report {
      arr.each do |a|
        (0...a.size).each{|i| break if a[i]}
      end
  }
  x.report {
    arr.each do |a|
        for i  in 0...a.size
            break if a[i]
        end
    end
}

  x.report {
    arr.each do |a|
        a.index{|elem| elem}
    end
  }
end