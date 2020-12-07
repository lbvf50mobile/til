p "alias x='ruby 20201207_Monday/20201207.rb'" 

# Some tests.

# 22:57 preparations.
def mutateTheArray(n, a)
    prev = 0
    (0...a.size).each do |i|
        tmp = a[i]
        nxt = i < (a.size - 1) ? a[i+1] : 0
        a[i] += nxt + prev
        prev = tmp
    end
    a
end
# 22:59
def alternatingSort(a)
    strict = ->x{
        (1...x.size).each do |i|
            return false if x[i-1] >= x[i]
        end
        true
    }
    size = a.size
    tmp = []
    size.times do |i|
        if i.even?
            tmp.push(a.shift())
        else
            tmp.push(a.pop())
        end
    end
    strict[tmp]
end
# 23:01
def mergeStrings(s1, s2)
    hsh = ->x{ x.each_with_object(Hash.new){|el,obj| obj[el] ||= 0; obj[el] += 1}}
    s1,s2 = s1.chars, s2.chars
    h1,h2 = hsh[s1], hsh[s2]
    answer = ""
    
    while (! s1.empty?) && (! s2.empty? )
        e1,e2 = s1.first, s2.first
        f1,f2 = h1[e1], h2[e2]
        if f1 == f2
            if e2 < e1
                answer += s2.shift()
            else
                answer += s1.shift()
            end
        else
            if f2 < f1
                answer += s2.shift()
            else
                answer += s1.shift()
            end
        end
    end
    answer += s1.join + s2.join
    answer
end
# 23:06

def digitAnagrams(a)
    signature = ->x{ x.to_s.chars.sort.each_with_object(Hash.new){|el,obj| obj[el] ||= 0; obj[el]+=1}.to_s }
    num = {}
    pairs = {}
    a.each do |el|
        s = signature[el]
        num[s] ||= 0; num[s] += 1
        pairs[s] ||= 0;
        if num[s] > 1
            pairs[s] = pairs[s] + num[s] - 1
        end
    end
    p num
    pairs.values.sum
end
# 23:29
# [25, 35, 872, 228, 53, 278, 872]
# 
def digitAnagrams(a)
    signature = ->x{ x.to_s.chars.sort.each_with_object(Hash.new){|el,obj| obj[el] ||= 0; obj[el]+=1}.to_s }
    num = {}
    pairs = {}
    a.each do |el|
        s = signature[el]
        num[s] ||= 0; num[s] += 1
        pairs[s] ||= 0;
        if num[s] > 1
            pairs[s] = pairs[s] + num[s] - 1
        end
    end
    pairs.values.sum
end
# 23:33
def digitAnagrams(a)
    signature = ->x{ 
        tmp = Array.new(10,0)
        while x > 0
            n = x%10
            tmp[n] += 1
            x = (x-n)/10
        end
        tmp
    }
    num = {}
    pairs = {}
    a.each do |el|
        s = signature[el]
        num[s] ||= 0; num[s] += 1
        pairs[s] ||= 0;
        if num[s] > 1
            pairs[s] = pairs[s] + num[s] - 1
        end
    end
    pairs.values.sum
end
#------------
def digitAnagrams(a)
    signature = ->x{ 
        x.to_s.chars.sort.join
    }
    num = {}
    pairs = {}
    a.each do |el|
        s = signature[el]
        num[s] ||= 0; num[s] += 1
        pairs[s] ||= 0;
        if num[s] > 1
            pairs[s] = pairs[s] + num[s] - 1
        end
    end
    pairs.values.sum
end
# Done!
# 23:36


