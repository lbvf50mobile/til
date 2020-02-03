# CalcBonuses
# https://stackoverflow.com/questions/32139885/yield-in-list-comprehensions-and-generator-expressions
# https://stackoverflow.com/questions/231767/what-does-the-yield-keyword-do/231855#231855
def calcBonuses(bonuses, n):
    it = [(yield x) for x in bonuses]
    res = 0

    try:
        for _ in range(n):
            res += next(it)
    except StopIteration:
        res = 0

    return res

x = calcBonuses([4,2,4,5],3)
print(x)