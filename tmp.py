
def day_of_year(date):
    year,month,day = [int(x) for x in date.split("-")]
    arr = [0,31,28,31,30,31,30,31,31,30,31,30,31]
    if (0 == year%4 and 0 != year%100) or (0 == year%100 and 0 == year%400):
        arr[2] = 29
    return sum(arr[0:month]) + day


print(day_of_year('2016-2-29'))