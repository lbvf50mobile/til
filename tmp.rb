

p a=3
p a

def feb n
    return 0 if 0 == n
    return 1 if 1 == n
    fn1 = 0
    fn2 = 1
    f = fn1+fn2
    (2..n).each do |n|
        f = fn1+fn2
        fn2,fn1 = f,fn2
    end
    f
end

p (0..10).map{|x| feb x}