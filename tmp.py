# Fibonacci List
import functools

test = [0]*0

print(test)

a = list(range(6))

print(a)

n  = 7

answer = functools.reduce(lambda acc,_: acc + [sum(acc[-2:])],range(n-2),[0,1])
print(list(answer))


