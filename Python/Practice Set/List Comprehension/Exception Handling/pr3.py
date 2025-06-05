try:
    with open("data.csv",'r') as f:
        content = f.readlines()
        for lines in content:
            print(lines)
except FileNotFoundError:
    print("File not Found!")