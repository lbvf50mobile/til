from collections import deque

print("Greetings.")
digits = [1,2,3,4,5]
n = len(digits)
res = [deque(digits) for _ in range(n)]
print([(x,y) for x,y in enumerate(res)])
