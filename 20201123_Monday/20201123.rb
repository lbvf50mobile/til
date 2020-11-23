p "alias x='ruby 20201123_Monday/20201123.rb'" 

# Some tests.
# 21:36

# ```Ruby
def mutateTheArray(n, a)
    prv = 0
    (0...a.size).each do |i|
        nxt = i < (a.size - 1) ? a[i+1] : 0
        tmp = a[i]
        a[i] += nxt + prv
        prv = tmp
    end
    a
end
#```

# 21:38
# ```Ruby
def countTinyPairs(a, b, k)
    a.zip(b.reverse).count{|(x,y)| "#{x}#{y}".to_i < k }

end

# ```

#21:30
#```Ruby
def mergeStrings(s1, s2)
    answer = ""
    s1,s2 = s1.chars, s2.chars
    hash = ->x{ x.each_with_object(Hash.new){|el,obj| obj[el] ||= 0; obj[el] +=1 } }
    h1,h2 = hash[s1],hash[s2]
    while (! s1.empty?) && (! s2.empty?)
        e1,e2 = s1.first, s2.first
        f1,f2 = h1[e1], h2[e2]
        if f1 == f2
            if e2 < e1
                s2.shift
                answer += e2
            else
                s1.shift
                answer += e1
            end
        else
            if f2 < f1
                s2.shift
                answer += e2
            else
                s1.shift
                answer += e1
            end
        end
    end
    answer += s1.join + s2.join
    answer
end

# ```
# 21:45
# ```Ruby
def concatenationsSum(a)
    sm = a.sum
    lgsm = a.sum{|x|  10 ** (Math.log10(10*x).to_i)}
    a.sum{|x| x*lgsm + sm}
end

# ```
# 21:47