#Given a dictinory with names and age in it, sort the dictinory on the base of age
data = people = [("Alice", 25), ("Bob", 20), ("Eve", 30)]
sorted_data = sorted(data, key=lambda x: x[1])
print(sorted_data)