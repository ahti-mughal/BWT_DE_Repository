
def is_palindrome(string):
    return string.lower() == string[::-1].lower()


print(is_palindrome("ada"))
