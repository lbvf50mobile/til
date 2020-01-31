participants = [0, 1, 1, 5, 4, 8]


print("This is Check Participants task from app.codesignal.com")

print(list(enumerate(participants)))

answer = [ i for i,x in enumerate(participants) if i > x]

print(answer)

if 1: print("one")
