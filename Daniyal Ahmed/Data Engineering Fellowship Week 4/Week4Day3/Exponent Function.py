def raise_to_power(basenum, pownum):
    result = 1
    for index in range(pownum):
        result = result*basenum
    return result
print((raise_to_power(3, 6)))