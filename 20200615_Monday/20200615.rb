p "alias x='ruby 20200615_Monday/20200615.rb'" 

def concatenationsSum(a)
    x = a.sum
    y = a.sum{|x| 10**(Math.log10(x).to_i + 1)}
    a.sum{|z| z*y + x}
end
def mergeStrings(s1, s2)
    h1 = s1.chars.each_with_object(Hash.new){|x,h| h[x] ||= 0; h[x] += 1}
    h2 = s2.chars.each_with_object(Hash.new){|x,h| h[x] ||= 0; h[x] += 1}
    s1 = s1.chars
    s2 = s2.chars
    ans = ""
    while (!s1.empty?) || (!s2.empty?)
        if s1.empty?
          x = s2.shift
          ans += x
          next
        end
        if s2.empty?
            x = s1.shift
            ans += x
            next
        end
        x1 = s1.first
        x2 = s2.first
        if h1[x1] == h2[x2]
            if x1 < x2
                s1.shift
                ans += x1
            elsif x1 > x2
                s2.shift
                ans += x2
            else
                s1.shift
                ans += x1
            end
            next
        end
        if h1[x1] < h2[x2]
            s1.shift
            ans += x1
            next
        end
        s2.shift
        ans += x2
    end
    ans 
end

def alternatingSort(a)
    b = []
    i = 0
    j = a.size-1
    (0...a.size).each do |x|
        if x.even?
            b.push(a[i])
            i += 1
        else
            b.push(a[j])
            j -= 1
        end
    end
    (1...b.size).each do |x|
        return false if b[x-1] >= b[x]
    end
    true
end
def mutateTheArray(n, a)
    prv = 0
    (0...a.size).each do |i|
        tmp = a[i]
        nxt = i < a.size - 1 ? a[i+1] : 0
        a[i] += prv + nxt
        prv = tmp
    end
    a
end