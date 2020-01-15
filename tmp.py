a = [4,5,6,7,8]
b = [8,9,10,11,12]
uniqueSums = {x+y for x in a for y in b if 0 == (x*y)%(x+y)}
print(uniqueSums, type(uniqueSums))