


def num(s,l) 
  ans = 0
  l.times do 
    ans = ans*10 + s
    s += 1
  end
  return ans
end

p num(1,2)
p num(2,2)
