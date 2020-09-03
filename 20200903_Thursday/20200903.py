print("alias x='python 20200903_Thursday/20200903.py'") 
# Try closures in Python. (does not work)
# https://stackoverflow.com/questions/25095790/using-lambda-function-to-change-value-of-an-attribute
a = 0
print(a)
#change = lambda: a+=1
def change():
    a = 0
    def  increment():
        a += 1
    increment()
    print(a)
change()
print(a)