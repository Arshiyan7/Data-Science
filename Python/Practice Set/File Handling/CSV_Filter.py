import csv
try:
    with open("Students_Score.csv",newline='') as read_file:
        read = csv.reader(read_file)
        next(read)  # to Skip headers
        for row in read:
            if row[2] == "A":
                print(row)
except FileNotFoundError:
    print("File not in directory!")