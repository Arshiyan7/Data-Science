import json
try:
    with open("Students.json",'r') as read_json:
        read = json.load(read_json)
        print(read)
except FileNotFoundError:
    print("File not found in directory")