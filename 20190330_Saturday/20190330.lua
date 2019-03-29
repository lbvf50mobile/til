print("alias x='lua 20190330_Saturday/20190330.lua'")
-- isert: 75sec, sort: 153 sec
function shuffle(tbl)
    size = #tbl
    for i = size, 1, -1 do
      local rand = math.random(size)
      tbl[i], tbl[rand] = tbl[rand], tbl[i]
    end
    return tbl
  end

  function arr()
    tbl = {}
    for i = 1,1000000,1 do
        table.insert(tbl,i)
    end
    return tbl
  end

print("insert")
local x = os.clock()
buffer = {}
for i=1,100 do
    table.insert(buffer,shuffle(arr()))
end
print(string.format("Insert time: %.2f\n", os.clock() - x))

 x = os.clock()
print("sort")
for i=1,100 do
    table.sort(buffer[i])
end
print(string.format("Sort time: %.2f\n", os.clock() - x))
