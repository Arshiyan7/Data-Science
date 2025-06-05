user_input = {"age": "25", "income": "abc", "experience": "5"}
for key, values in user_input.items():
    try:
        convert = int(values)
    except ValueError:
        print(f"Invalid input for {key}")