p "alias x='ruby 20201116_Monday/20201116.rb'" 
# 21:24
def mutateTheArray(n, a)
    prv = 0
    (0...a.size).each do |i|
        tmp = a[i]
        nxt  = i < (a.size - 1) ? a[i+1] : 0
        a[i] += nxt + prv
        prv = tmp
    end
    a
end


# 21:25
def countTinyPairs(a, b, k)
    a.zip(b.reverse).count{|(x,y)| "#{x}#{y}".to_i < k}

end

# 21:26
def meanGroups(a)
    a.map.with_index{|x,i| [x.sum/x.size.to_f,i]}
    .group_by(&:first).values
    .map{|x| x.map(&:last).sort}.sort_by(&:first)

end


# 21:28

def hashMap(queryType, query)
    hash = {}
    ds,di = 0,0
    count = 0
    actions = {
        "insert" => ->x{ k,v = x; hash[k-di] = v - ds;},
        "get" => ->x{ count += hash[x[0]-di] + ds;},
        "addToKey" => ->x{ di += x.first},
        "addToValue" => ->x{ ds += x.first}
    }
    queryType.each_with_index{|q,i| actions[q][query[i]] }
    count
end

# 21:31