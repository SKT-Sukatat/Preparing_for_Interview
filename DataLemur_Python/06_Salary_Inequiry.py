def min_inequity(salaries, n):
  salaries = sorted(salaries)
  # print("Sorted Salaries:", salaries)
  salaries = salaries[:n]
  # print("Salaries", salaries)
  inequity = max(salaries) - min(salaries)
  return inequity

print(min_inequity([60000, 80000, 120000, 70000, 130000, 95000, 125000], 4))