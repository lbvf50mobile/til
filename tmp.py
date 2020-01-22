from itertools import dropwhile
pills = ["Notforgetan", 
 "Antimoron", 
 "Rememberin", 
 "Bestmedicen", 
 "Superpillsus"]

print("greeints?")
gen = dropwhile(lambda x: 0 != len(x)%2,pills)
arr = [next(gen) for _ in range(3)]
print(gen)
print(arr)
