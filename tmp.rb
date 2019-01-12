func = -> (z:, **a) { p a; z + 's' }
user = { name: 'X', type: 'hash', z: "hey" }
p func.(user) # heys

def x(z:,**a)
    p a;
    p z;
end

x(user)

def z(a,*b)
    p a
    p b
end

z([1,2,3])