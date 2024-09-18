def fizz_buzz_sum(target):
  candidates = []
  for i in range(1, target):
    if i % 3 == 0:
      candidates.append(i)
    elif i % 5 == 0:
      candidates.append(i)
  result = sum(candidates)
  return result