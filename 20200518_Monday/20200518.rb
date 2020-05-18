p "alias x='ruby 20200518_Monday/20200518.rb'" 

# I had a strange fail on the task #2
# And I got why an A is reduced. I reduced A. By pop.


# works
def alternatingSort(a)
    ar = []
    f = a
    s = a.reverse
    (0...a.size).each do |i|
        if i.even?
            ar.push(f.shift)
        else
            ar.push(s.shift)
        end
    end
    return true if a.size == 1
    return false if ar.each_cons(2).any?{|(x,y)| x >= y}
    
    true
end

# does not works
def alternatingSort1(a)
    ar = []
    f = a # here was a problem.
    s = a.reverse
    (0...a.size).each do |i|
        if i.even?
            ar.push(f.shift)
        else
            ar.push(s.shift)
        end
    end
    (1...a.size).each do |i|
        return false if ar[i-1] >= ar[i]
    end
    true
end