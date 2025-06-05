noise = [12, -3, 45, -22, 8]
#Repalce negative values with 0
neg = [0 if x<0 else x  for x in noise]
print(neg)