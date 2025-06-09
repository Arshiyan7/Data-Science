import json

new_Entry = {
    "name": "Arshiyan",
    "age": "22",
    "grade": ["A", "A+", "S"],
    "enrolled": True
}

try:
    with open("Students.json", 'r') as file:
        data = json.load(file)  
    data.append(new_Entry)

    with open("Students.json", 'w') as file:
        json.dump(data, file, indent=4)  

except FileNotFoundError:
    print("File not found in directory!")
