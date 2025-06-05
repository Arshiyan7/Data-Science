data = ["10", "20", "abc", "40"]
converted = []

for val in data:
    try:
        to_int = int(val)
        converted.append(to_int)
    except ValueError:
        print(f'Cannot convert {val} to int, moving on...')
        
print("\nFinal list after conversion:",converted)