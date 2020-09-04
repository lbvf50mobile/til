print("alias x='python 20200903_Thursday/20200903.py'") 
# Try closures in Python. (does not work)
# https://stackoverflow.com/questions/25095790/using-lambda-function-to-change-value-of-an-attribute
a = 0
print(a)
#change = lambda: a+=1
def change():
    a = 0
    def  increment():
        print("Do increment");
        pass
        # a += 1 # Unbound local error. Error A is not defined.
    increment()
    print(a)
change()
print(a)

print("Now test with Array or List in Python way of description.")
# https://docs.python.org/3/tutorial/controlflow.html?highlight=passing%20mutable#id1

a = [1,2,3]

def change_list(x): x[0] = 10

change_list(a)

print(a)