print("alias x='lua 20190206_Wednesday/20190206.lua'")

-- Lua TABLE SIZE: #table_name and table.getn(table_name), table.getn - removed in Lua 5.2;

-- https://stackoverflow.com/a/11890246/8574922 Lua table library removed?
-- https://stackoverflow.com/q/2705793/8574922  How to get number of entries in a Lua table?

tbl = {}
tbl["test"] = 47
tbl[1] = 48
print(#tbl) -- table.getn - removed in Lua 5.2, table.getn(tbl))
print("test dose not count as key, and it's interesting.")
tbl[555] = 555
tbl[2] = 2
print(#tbl)
a = {1,2,3}
print(#a)

table.insert(a,4)
print(#a)

a[#a+1] = 5

print(#a)
