def fractions():
        while True:
            yield [1,1]

gen = fractions()

print(next(gen))

print(next(gen))
print(next(gen)!= [1,1])
