import json
student = [
    {
    "name": "Emma",
    "age": 20,
    "grades": ["A", "B+", "A-"],
    "enrolled": True
}
]

with open("Students.json",'w') as json_write:
    json.dump(student,json_write)
