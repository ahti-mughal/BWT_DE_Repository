monthConversions = {
    "Jan":"January",
    "Feb": "February",
    "Mar": "March",
    "Apr": "April",
    "May": "May",
    "Jun": "June",
    "Jul": "July",

}
print(monthConversions["Jan"])
print(monthConversions.get("Jul"))
monthConversions1 = {
    0:"January",
    1: "February",
    2: "March",
    3: "April",
    4: "May",
    5: "June",
    6: "July",

}
print(monthConversions1[0])
print(monthConversions1.get(0))