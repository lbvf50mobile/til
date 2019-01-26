function z(...)
    print(arg) -- https://github.com/krunkathos/quasimofo/blob/master/lib/strict.lua#L37
    -- https://www.tutorialspoint.com/lua/lua_functions.htm
    -- http://lua-users.org/wiki/FunctionCallTutorial
    print(table.unpack(arg))
    print(...)
end

z(1,2,3)
-- (function() print("cool") end)()