# Write a function that takes a list of words as input and returns a dictionary where the keys are the words in the list, and the values are the lengths of the corresponding words.
word_len = {}
while True:
    words = input('Word: ')
    word_len.update({words : len(words)})
    if words == 'q':
        word_len.popitem()
        print(word_len)
        break    

# Write a function that takes a dictionary of items and prices as input, and returns a new dictionary where the keys are the items and the values are the prices with a 10% discount.
products = {
    'apples' : 50,
    'peaches' : 75,
    'bananas' : 35
}

discounted_products = {}
for item in products:
    discount = (90 / 100) * products[item]
    discounted_products[item] = discount

print(discounted_products)