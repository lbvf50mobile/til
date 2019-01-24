print("alias x='lua 20190124_Thursday/20190124.lua'")
-- Lua string.gmatch. "string":gmatch - dose not works, var_str:gmatch works;

-- http://lua-users.org/wiki/StringLibraryTutorial

local example = "This is the example."
for i in string.gmatch(example, "%S+") do
    print(i)
end

for index, value in string.gmatch(example, "%S+") do
    print(index,value)
end

for value in example:gmatch("%S+") do
    print(value)
end

-- for value in "test":gmatch("%S+") do print(value) end
local test = "test test"
for value in test:gmatch("[est]") do print(value) end

