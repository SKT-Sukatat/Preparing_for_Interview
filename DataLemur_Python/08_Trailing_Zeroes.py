num = int(input())

def factorial(n2):
    fac_result = 1
    for i in range(1, n2+1):
        fac_result *= i
    return fac_result

factorial_result = str(factorial(num))
print(factorial_result)
result = 0
for i in range(-1, -1*len(factorial_result), -1):
    if factorial_result[i] == '0':
        result += 1
    else:
        break

print(result)