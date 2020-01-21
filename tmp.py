a = {'a': 1, 'b':2}
print(a)
for k in a:
    print(k)

print(a.items())

print([[a[k],k] for k in a])

