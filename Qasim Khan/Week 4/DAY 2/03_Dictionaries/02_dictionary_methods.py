mydict = {
    "QASIM": "good guy",
    "cristino": "goat",
    "marks": [1,2,45],
    "another": {"afaq":"chumu"},
    1 : 2
}
# DICTIONARY METHODS
print(mydict.keys()) # print the keys of dictionary
print(mydict.values()) #print the values of dictionary
print(mydict.items()) #print the (keys and values) for all content of dictionary
print (mydict)
updateDict = {
    'shahzi' : 'friend',
    "asiya" : "friend",
    "tehrm" : "friend"
}
mydict.update(updateDict) # update the dictionary by adding key-value pairs from updateDict
print (mydict)
print (mydict.get("QASIM")) # prints value associated with key "QASIM"
print (mydict["QASIM"]) # prints value associated with key "QASIM"

#the difference between .get and [] syntax in dictionaries?

print (mydict.get("QASIM2")) # returns none as QASIM2 is not present in dictionary
print (mydict["QASIM2"] ) # throws an error  as QASIM2 is not present in dictionary