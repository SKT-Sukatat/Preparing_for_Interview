def max_subarray_sum(prices):
    min_price = min(prices)
    possible_sell_day = []
    for i in range(len(prices)):
        if prices[i] == min_price:
            for j in range(i+1, len(prices)):
                possible_sell_day.append(prices[j])
    if len(possible_sell_day) == 0:
        return 0
    else:
        max_price = max(possible_sell_day)

    max_profit = max_price - min_price
    if max_profit is not None:
        return max_profit

print(max_subarray_sum([4, 5, 10, 3, 5, 3, 9, 6]))