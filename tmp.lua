-- answer for @ShadoWalkeR30
-- http://www.lua.org/manual/5.1/manual.html#pdf-string.gmatch
str = "This-is-Pro-Ruby"
t = {}
for v in str:gmatch("[^-]+") do
    table.insert(t, v)
end

for k,v in pairs(t) do
    print(k,v)
end

