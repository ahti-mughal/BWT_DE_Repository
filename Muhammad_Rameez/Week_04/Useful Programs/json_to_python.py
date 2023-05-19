import json

x = '{"name":"John", "age":30, "city":"New York"}'
student = '{"name" : "M Rameez" ,  "roll no" : 90}'


y = json.loads(x)
z = json.loads(student)

print(y["name"])
print(z["roll no"])
