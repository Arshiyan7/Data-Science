features = [0.1, 0.2, 0.3]
labels = [1, 0, 1]

result = [{"feature": f, "label": l} for f, l in zip(features, labels)]
print(result)
