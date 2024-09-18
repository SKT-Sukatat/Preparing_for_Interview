def intersection(a, b):
  result = []
  for i in range(len(a)):
    if a[i] in b:
      result.append(a[i])
  return result