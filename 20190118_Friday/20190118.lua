print("alias x='lua 20190118_Friday/20190118.lua'")

-- Lua table, table indexes, string format;

print("In Lua the Array indexing start from 1, not from 0")
print(string.format("a = {'one','two'} => a[1] => %s ",({'one','two'})[1]))
-- http://lua-users.org/wiki/TablesTutorial
print(string.format("but it possible to set index from [0] using square brakets: %s", 
    ({[0]="one"})[0]))
-- http://www.lua.org/pil/20.html
str = "hi"
print("Str length is: ", string.len(str))
-- https://stackoverflow.com/a/27434185/8574922
-- 
z = {}
for i = 0,2,1 
do
    table.insert( z, i)
end
print(z)
-- https://github.com/adnzzzzZ/blog/issues/30
-- Creating games on Lua