print("alias x='python 20200616_Tuesday/20200616.py'") 

# https://www.codewars.com/kata/5a4138acf28b82aa43000117 Maximum Product.
def adjacent_element_product(a):
    return max( x*y for x,y in zip(a,a[1:]) )

print(adjacent_element_product([1,2,5]))

a = list(zip([1,2,3],[100,200,300,400]))
print(a) # [(1,100),(2,200),(3,300)]
b = list(zip([100,200,300,400],[1,2,3]))
print(b) # [(100,1),(200,2),(300,3)]