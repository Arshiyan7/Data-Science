import csv
to_append = [
    ["Sophia", "18", "A"]
]
try:
    with open("Students_Score.csv",'a',newline='') as append:
        write = csv.writer(append)
        write.writerows(to_append)
except FileNotFoundError:
    print("File not found in directory!")

try:
    with open("Students_Score.csv",newline='') as read_csv:
        read = csv.reader(read_csv)
        for rows in read:
            print(rows)
except FileNotFoundError:
    print("CSV file not found!")

except Exception as e:
    print(f"Error: {e}")
