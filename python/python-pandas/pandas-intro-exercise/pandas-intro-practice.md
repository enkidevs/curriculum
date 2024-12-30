---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Pandas coding playground!
    # Let's practice the pandas basics we've learned

    import pandas as pd

    # Product data
    data = {
        'name': ['Apple', 'Banana', 'Orange', 'Mango'],
        'price': [0.5, 0.3, 0.6, 0.8],
        'stock': [100, 120, 80, 60]
    }

    # 1. Create a DataFrame from the data
    df = # Finish this line

    # 2. Create a Series from the 'price' column
    prices = # Finish this line

    # 3. Display DataFrame info (number of rows, columns, data types)
    info = # Finish this line

    # 4. Get basic statistics of numerical columns
    stats = # Finish this line

---

# Practice Pandas Basics

---

## Content

> 👩‍💻 Your task is to analyze product data.

Your tasks:
1. Create a DataFrame from the dictionary
2. Extract the 'price' column as a Series
3. Use `info()` to get DataFrame information
4. Use `describe()` to get statistical summary

> 💡 Hint: Remember that a DataFrame column is a Series!
