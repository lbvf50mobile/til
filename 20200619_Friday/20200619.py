print("alias x='python 20200619_Friday/20200619.py'") 

import re

first = re.compile(r'^[A-Z]')

x = re.sub(first,'w','Word')
print(x)

s = "Word"
s = s[0:1].lower() + s[1:]
print(s)