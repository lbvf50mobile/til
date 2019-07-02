p "alias x='ruby 20190702_Tuesday/20190702.rb'" 

# Ruby +@ and -@ (Unary operations);

# To define unary + and unary – operators, use method names +@ and -@ to avoid ambiguity
# with the binary operators that use the same symbols.
# Chapter 4: Expressions and Operators The Ruby Programming Language (c)  David Flanagan and Yukihiro Matsumoto
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

# https://gist.github.com/lbvf50mobile/37f833c0a02d14d7ee7e97159c59afbf
p (1..4).to_a.shuffle.sort(&:-@)