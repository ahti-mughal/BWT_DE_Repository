myDict = {
    "kalm" : "pen",
    "panka" : "fan",
    "insaniyat" : "humanity",
}
print("Options are", myDict.keys())
a = input('Enter the Urdu word:')
print("eng meaning :",myDict.get(a))
