class X
    def -@
        'this is minus'
    end
    def +@
        "this is plus"
    end
end

p -X.new # "this is minus"
p +X.new # "this is plus"