print("alias x='lua 20190126_Saturday/20190126.lua'")

-- Lua three dots (...) and arg.

function z(...)
    -- https://www.tutorialspoint.com/lua/lua_functions.htm
    -- http://lua-users.org/wiki/FunctionCallTutorial
    print("Arg:")
    print(arg)
    print("Talbe unpack(arg)")
    print(table.unpack(arg))
    print("Print three dots")
    print(...)
end

z("a","b","c")
print(_VERSION)