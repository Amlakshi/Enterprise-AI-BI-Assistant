import pandas as pd

print("Welcome to Enterprise AI Business Intelligence Assistant")

employees = {
    "Employee": ["John", "Sarah", "David"],
    "Department": ["Sales", "HR", "IT"],
    "Salary": [50000, 60000, 70000]
}

df = pd.DataFrame(employees)

print(df)