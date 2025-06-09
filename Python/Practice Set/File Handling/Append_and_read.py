to_append = "\nMake it work, make it right, make it fast."
try:
    with open("Quote1.txt","a") as f_a:
        content_a = f_a.write(to_append)
        print(content_a)
except FileNotFoundError:
    print("File not found in the Directory!")

try:
    with open("Quote1.txt","r") as f_r:
        content_r = f_r.read()
        print(content_r)
except FileNotFoundError:
    print("File not found in the Directory!")