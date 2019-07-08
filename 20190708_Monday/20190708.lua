print("alias x='lua 20190708_Monday/20190708.lua'")

-- Lua table.unpack and push/shift => insert/remove;

a,b = table.unpack({"table","unpack"})
print(a,b)

a = {}

table.insert(a, 'first in, first out')
table.insert(a, 'second in, second out')

print(table.remove(a, 1))
print(table.remove(a,1))
