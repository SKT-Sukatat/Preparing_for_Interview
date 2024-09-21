input = [1, 4, 6, 10]
target = 2
result = []

for i, j in enumerate(input):
    for k, l in enumerate(input):
        print(f"j: {j}, l: {l}, j+l = {j+l}")
        if j + l == target:
            result.append(i)
            result.append(k)
            break

if len(set(result)) == 2:
    print(list(set(result)))
else:
    print([-1, -1])


def two_sum(input: list[int], target: int) -> list[int]:
  result = []
  
  for i, j in enumerate(input):
    for k, l in enumerate(input):
      if j + l == target:
        result.append(i)
        result.append(k)
        break
  
  if len(set(result)) == 2:
    return (list(set(result)))
  else:
    return [-1, -1]