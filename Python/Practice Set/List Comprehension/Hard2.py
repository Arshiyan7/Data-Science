dataset = [
    {"name": "Alice", "score": 85},
    {"name": "Bob", "score": 58},
    {"name": "Charlie", "score": 95}
]
#Create a list of names whose numebr is above 60
score = [x for x in dataset if x['score'] > 60]
print(score)