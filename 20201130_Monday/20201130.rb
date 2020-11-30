p "alias x='ruby 20201130_Monday/20201130.rb'" 

# Some tests.

## 22:11
def mutateTheArray(n, a)
    prv = 0
    (0...a.size).each do |i|
        tmp = a[i]
        nxt = i < (a.size-1) ? a[i+1] : 0
        a[i] += prv + nxt
        prv = tmp
    end
    a
end

## 22:13
def countTinyPairs(a, b, k)

    a.zip(b.reverse).count{|(x,y)| "#{x}#{y}".to_i < k }

end

## 22:14
def mergeStrings(s1, s2)
    h = ->x{ x.each_with_object(Hash.new){|el,obj| obj[el] ||= 0; obj[el] += 1} }
    s1,s2 = s1.chars, s2.chars
    h1,h2 = h[s1],h[s2]
    ans = ""
    
    while (!s1.empty?) && (!s2.empty?)
        e1,e2 = s1.first, s2.first
        f1,f2 = h1[e1],h2[e2]
        
        if f1 == f2
            if e2 < e1
                s2.shift
                ans += e2
            else
                s1.shift
                ans += e1
            end
        else
            if f2 < f1
                s2.shift
                ans += e2
            else
                s1.shift
                ans += e1
            end
        end
    
    end
    
    
    ans += s1.join + s2.join
    ans
end
## 22:19
def hashMap(queryType, query)
    ans = 0
    di,ds = 0, 0
    h = {}
    act = {
        'insert' => ->x{ i,v = x; h[i-di] = v - ds;},
        'get' => ->x { ans += h[x.first - di] + ds;},
        'addToKey' => ->x{ di += x.first },
        'addToValue' => ->x {ds += x.first},
    }
    queryType.each_with_index do |q,i|
        act[q][query[i]]
    end
    
    ans
    

end
## 22:23

