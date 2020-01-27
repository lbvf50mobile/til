
athletes = [1,2,3,4]

arr = [j for i in zip(athletes[1::2],athletes[0::2]) for j in i]
arr1 = [athletes[i^1] for i in range(len(athletes))]

print(arr)
print(arr1)