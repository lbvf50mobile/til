# example by  @QuarterToTen 

def frist(x,y,z,m)
    (x+y+z)%m
end

def second(x,y,z,m)
    x%m + y%m + z%m
end

data = [3,5,1,2]

p frist(*data) # 1
p second(*data) # 3