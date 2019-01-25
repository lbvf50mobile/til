print("alias x='lua 20190125_Friday/20190125.lua'")

-- Lua the dot and colon: obj.show("a","b") and obj:show("c") is equal to obj.show(obj,c);


obj = {
show = function(one, two)
    print("one", one)
    -- attempt to call a nil value stack traceback:
    -- ("The two is = %s "):format(two)
    str = "The two is = %s "
    print(str:format(two))
end
}

obj.show("TheOne","TheTwo")
obj:show("TheFour")