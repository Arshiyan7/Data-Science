temps_f = [98.6, 100.4, 102.2]
#Convert from Farenheit to celsius
cel = [(x-32)*5/9 for x in temps_f]
print(cel)