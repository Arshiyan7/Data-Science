#Given a list with mixed (string and numbers) extract only numbers 
items = ["123", "hello", "456", "world", "789"]
filtered_items = list(filter(lambda x: x.isnumeric(),items))
print(filtered_items)