p "alias x='ruby 20201228_Monday/20201228.rb'" 

p "Some tests."

# 22:44
def mutateTheArray(n, a)
    prv = 0
    (0...a.size).each do |i|
        tmp = a[i]
        nxt = i < (a.size - 1) ? a[i+1] : 0
        a[i] += prv + nxt
        prv = tmp
    end
    a
end

# 22:46

def countTinyPairs(a, b, k)
    a.zip(b.reverse).count{|(x,y)| "#{x}#{y}".to_i < k }
end

# 22:48
def meanGroups(a)
    a.map.with_index{|el,i| [el.sum/el.size.to_f,i]}.group_by(&:first)
    .values.map{|x| x.map(&:last).sort}.sort_by(&:first)
end
# 22:48
def hashMap(queryType, query)
    h = {}
    di,ds = 0,0
    counter = 0
    a = {
        'insert' => ->x{ i,v = x; h[i-di] = v - ds},
        'get' => ->x{i = x[0]; counter += h[i-di] + ds },
        'addToKey' => ->x{ di += x.first},
        'addToValue' => ->x{ ds += x.first},
    }
    queryType.each_with_index do |action,i|
        a[action][query[i]]
    end
    counter
end

# 22:52