# Several approaches to return sorted array and do not fail on nil and empty value
variants = [
    ->(x){ x ? x.sort : [ ]},
    ->(x){ x.to_a.sort},
    ->(x){ Array(x).sort},
    ->(x){ (x or []).sort}
]
n = 0
a = (1..10).to_a
begin
    a.shuffle!
    raise if (1..10).to_a == a
rescue 
   n += 1
   retry if n < 10 
end
variants.each do |arr| 
    p arr.call(nil) 
    p arr.call([]) 
    p a
    p arr.call(a)
end
