one = set(['yellow','red','blue','grey'])
two = set(['red','green','grey'])
three = set(['black','braun','blue','green','grey'])
all = one | two |three
common = one & two & three
print(all)
print(common)
print(all-common)