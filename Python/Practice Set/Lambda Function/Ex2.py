#Given a list of names extract out the names with only 4 letter in it 
names = ["Amy", "John", "Robert", "Eve"]
filtered_names = list(filter(lambda x: len(x)<=4,names))
print(filtered_names)