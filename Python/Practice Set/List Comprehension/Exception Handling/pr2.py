data = [{"name": "Alice"}, {"name": "Bob", "age": 25}, {"age": 30}]
for x in data:
    try:    
        print(x['name'])
    except KeyError:
        print(f"Name not available for {x}!")
        
        