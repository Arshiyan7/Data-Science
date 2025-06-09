Quote = "The trouble with programmers is that you can never tell what a programmer is doing until it's too late."
with open("Quote1.txt","w") as f_w:
        content_w = f_w.write(Quote)
try:
    with open("Quote1.txt","r") as f_r:
         content_r = f_r.read()
         print(content_r)
except FileNotFoundError:
    print("File not Found in the directory!")