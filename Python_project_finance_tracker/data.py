from datetime import datetime

date_format= "%d-%m-%Y"
CATRGORIES={
    "I":"Income",
    "E": "Expenses",
}

def get_date(prompt,allow_default=False):
    date_str=input(prompt)
    if allow_default and not date_str:
        return datetime.today().strftime(date_format)
    
    try:
        valid_date=datetime.strptime(date_str, date_format)
        return valid_date.strftime(date_format)
    except ValueError:
        print("Please enter date in form of dd-mm-yy.")
        return get_date(prompt,allow_default)
    
def get_amount():
    try:
        amount=float(input("Enter amount: "))
        if amount <= 0:
            raise ValueError("Amount must be non-negative and non-zero.")
    except ValueError as e:
        print(e)
        return get_amount()

def get_category():
    category=input("Enter the category ('I for Income or 'E' for expenses): .)").upper()
    if category in CATRGORIES:
        return CATRGORIES[category]
    
    print("Invalid input, please write ('I for Income or 'E' for expenses): ")
    return get_category

def get_description():
    return input("Please write description (optional): ")
