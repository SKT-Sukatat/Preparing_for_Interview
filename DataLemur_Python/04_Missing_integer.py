def missing_int(input: list[int])-> int:
  sorted_input = sorted(input)
  max_num = sorted_input[-1]
  
  for i in range(len(input)+1):
      if i not in input:
        result = i
  
  return result