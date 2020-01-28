male = [5,28,14,99,17]
female = [5,14,29,99,16]

ans = list(zip(*filter(lambda x: x[0] != x[1],zip(male,female))))
ans1 = [[x for i,x in enumerate(male) if male[i] != female[i]],[y for i,y in enumerate(female) if male[i] != female[i]]]

print(ans)
print(ans1)