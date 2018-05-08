# Object#extend.

a = Object.new
p a

module Hub
end

a.extend(Hub)

case a
when Hub
    p "A is Hub"
else 
    p "a is not Hub"
end

