# Debugging what guy from India Wrote

def is_match(text, pattern):
  i=0 
  j=0
  n = len(pattern)
  m = len(text)
  prev = ''
  while(i<n and j<m):
    if pattern[i]=='.':
      i+=1
      j+=1
    elif pattern[i]=='*':
      while(j<m and text[j]!=prev):
        j+=1
    elif pattern[i]==text[j]:
      i+=1
      j+=1
      prev = pattern[i]
    else:
      return False

  if i==n and j==m:
    return True
  return False

print("hi")

answer = is_match("a","aa")
print(answer)