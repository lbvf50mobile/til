print("alias x='lua 20180818_Saturday/20180818.lua'")

-- defines a factorial function
function fact (n)
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end
print (fact(20))

for i = 9000000,0,-1
do
    fact(20)
end