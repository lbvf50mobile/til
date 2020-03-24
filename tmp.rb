str = "12345"
i, j  = 0 , str.size - 1 
while i < j
str[i],str[j] = str[j],str[i]
i +=1
j -=1
end
p str