from re import match
s = "075335440555"
x = match('(\+44|0)7\d{9}',s.replace("-",''))
print(x)
print(match('2','2111'))
print(match('1','2111'))