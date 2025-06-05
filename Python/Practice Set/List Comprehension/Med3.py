matrix = [[1, 2], [3, 4], [5, 6]]
#Flatten the list e.g -> [1,2,3,4,5,6]
flat = [x for rows in matrix for x in rows]
print(flat)