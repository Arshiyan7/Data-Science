#Given the list of decimal values tranform them to float
prices = ["12.5", "9.99", "5.50", "100"]
transform = list(map(lambda x: float(x),prices))
print(transform)