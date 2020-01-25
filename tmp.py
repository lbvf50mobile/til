# https://stackoverflow.com/a/231855/8574922
# https://docs.python.org/3.8/library/functions.html#zip
# https://www.programiz.com/python-programming/methods/built-in/iter
# https://howtodoinjava.com/python/compare-tuples/
# https://docs.python.org/3/library/stdtypes.html#comparisons
# https://docs.python.org/3/tutorial/datastructures.html#comparing-sequences-and-other-types
# https://docs.python.org/3/tutorial/controlflow.html#arbitrary-argument-lists

morning = [3,5,2,7,50]
evening = [3,7,7,7,1]

after_zip = zip(morning, evening)

print(list(after_zip))

# Will be empty. Because Generator! after_map = map(sorted, after_zip)

after_map = map(sorted, zip(morning, evening))

print(list(after_map))
print(list(after_map)) # Empty because generator.

answer = zip(*map(sorted,zip(morning,evening)))
print(answer)
print(list(answer))
def next(x):
    return 2

print(next(8))