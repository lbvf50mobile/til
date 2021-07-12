# Leetcode: 205. Isomorphic Strings.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/609/week-2-july-8th-july-14th/3811/
# Accepted.
# Thanks God!
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  str2arr(s) == str2arr(t)
end

def str2arr(s)
  counter = 0
  order = s.chars.each_with_object(Hash.new){|el,obj| 
    if !obj[el]
      obj[el] = counter
      counter += 1
    end
  }
  s.chars.map{|x| order[x]}
end
