a = {1,2,7,6}
b = {2,3,4,7}
c = {4,5,6,7}
aib = a^b # {1,3,4,6}
print(aib)
bic = b^c # {2,3,5,6}
print(bic)
cia = c^a # {1,2,4,5}
print(cia)
aib_i_c = (a^b)^c # {1,3,5,7}
print(aib_i_c)
a_i_bic = a ^ (b^c) # {1,3,5,7}
print(a_i_bic)
aibic = a^b^c
print(aibic)
answer = (a|b|c) - (a^b^c)
print(answer) # {2,4,6}


