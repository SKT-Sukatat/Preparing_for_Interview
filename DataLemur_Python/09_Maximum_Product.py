def max_three(input):
    input = sorted(input)
    negative_num = []
    if input[0] < 0:
        negative_num.append(input[0])
    if input[1] < 0:
        negative_num.append(input[1])

    product_two_negatives = []
    product_two_positives = []

    # Calculate product of negative number
    if len(negative_num) == 2:
        product_two_negatives.append(negative_num[0] * negative_num[1])
    
    if input[-3] * input[-2] > 0:
        product_two_positives.append(input[-3] * input[-2])

    if len(product_two_positives) != 0: 
        choose = product_two_positives[0]

    if len(product_two_positives) != 0 and len(product_two_negatives) != 0:
        if product_two_negatives[0] > product_two_positives[0]:
            choose = product_two_negatives[0]
        elif product_two_negatives[0] < product_two_positives[0]:
            choose = product_two_positives[0]
    elif len(product_two_positives) != 0: 
        choose = product_two_positives[0]
    elif len(product_two_negatives) != 0: 
        choose = product_two_negatives[0]

    result = choose * max(input)

    return result

print(max_three([-4, -2, 3, 5]))



"""
Case 1: All positive --> 3 ตัวท้าย
Case 2: At least two negetive --> Check the last two negetive > input[-3] * input[-2]
"""