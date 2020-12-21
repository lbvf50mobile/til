p "alias x='ruby 20201221_Monday/20201221.rb'" 

# Some tests.

# 23:13

def mutateTheArray(n, a)
    prev = 0
    (0...a.size).each do |i|
        tmp = a[i]
        nxt = i < (a.size-1) ? a[i+1] : 0
        a[i] += prev + nxt
        prev = tmp
    end
    a

end

# 23:15

def alternatingSort(a)
    right = ->x{
        (1...x.size).each do |i|
            return false if x[i-1] >= x[i]
        end
        return true
    }
    size, tmp = a.size, []
    (0...size).each do |i|
        el = i.even? ? a.shift() : a.pop()
        tmp.push(el)
    end
    right[tmp]
end

# 23:19 
def meanGroups(a)
a.map.with_index{|el,i| [el.sum/el.size.to_f, i]}.group_by(&:first)
.values.map{|x| x.map(&:last).sort}.sort_by(&:first)
end

# 23:19
def meanGroups(a)
    a.map.with_index{|el,i| [el.sum.fdiv(el.size), i]}.group_by(&:first)
    .values.map{|x| x.map(&:last).sort}.sort_by(&:first)
end

# 23:21
def concatenationsSum(a)
    sm = a.sum
    lgsm = a.sum{|x| 10**(Math.log10(x*10).to_i) }
    a.sum{|x| x*lgsm + sm}
end

# 23:22