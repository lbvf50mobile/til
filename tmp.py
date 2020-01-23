from itertools import permutations, islice, combinations

a = [ str(i) for i in range(11)]
print(sorted(a))
print(list(islice("abc",0,1))[0])

print(list(combinations("abc",2)))
print(sum((1,2,3)))