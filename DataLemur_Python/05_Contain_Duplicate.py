def contains_duplicate(input)-> bool:
  initial_len = len(input)
  set_len = len(set(input))
  if set_len != initial_len:
    result = True
  else:
    result = False
  return result


def contains_duplicate(input):
  count = 0
  for i in input:
    for j in input:
      if i == j:
        count += 1
    if count >= 2:
      return True
    count = 0
  return False