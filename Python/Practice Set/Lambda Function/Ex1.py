#Transform the numbers in the given list by adding 1 to each number using a lambda function
#E.g. list = [1,2,3,4] -> to -> [2,3,4,5]
nums = [1,2,3,4]
tranform = list(map(lambda x: x+1,nums))
print(tranform)