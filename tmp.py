from itertools import product, combinations_with_replacement

digits = [1, 5, 2]
k = 2
d = 3

def createNumber(digs):
    return "".join(map(str, digs))
x = sorted(map(lambda x: createNumber(list(x)),filter(lambda x: 0 == sum(x)%d, set(combinations_with_replacement(digits+digits,k)))))

# print(list(x))

z = list(product(digits, repeat = 2))
print(z)
