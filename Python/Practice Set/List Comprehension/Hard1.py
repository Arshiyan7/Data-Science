import re
raw = ["HeLlo!", "WoRLD123", "PYTHON@#"]
pattern = r'[^\w\s]|\d'
#keep only alphabetic characters and lowercase them
clean = [re.sub(pattern, '', x).lower() for x in raw ]
print(clean)