import csv

data = [
    ['Name', 'Age', 'Grade'],
    ['John', '18', 'A'],
    ['Lisa', '19', 'B'],
    ['Mike', '17', 'A+']
]
with open("Students_Score.csv",'w',newline='') as w_csv:
        write = csv.writer(w_csv)
        write.writerows(data)
try:
    with open("Students_Score.csv",newline='') as r_csv:
        write = csv.reader(r_csv)
        for rows in write:
             print(rows)

except FileNotFoundError:
    print("CSV file not found!")

except Exception as e:
    print(f"Error: {e}")