---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to sales data analysis!
    import pandas as pd

    # Quarterly sales data
    sales = pd.DataFrame({
        'product': ['Laptop', 'Phone', 'Tablet', 'Watch'],
        'Q1_units': [100, 200, 150, 80],
        'Q2_units': [120, 180, 160, 90],
        'Q1_price': [1200, 800, 500, 300],
        'Q2_price': [1200, 750, 500, 320]
    })

    # Product categories with features
    categories = pd.DataFrame({
        'product': ['Laptop', 'Phone', 'Tablet', 'Watch'],
        'features': [
            ['gaming', 'work', 'portable'],
            ['camera', 'portable', '5G'],
            ['portable', 'stylus', 'media'],
            ['fitness', 'portable', 'health']
        ]
    })

    # 1. Reshape sales data to show units sold by quarter
    units_by_quarter = # Your code here

    # 2. Calculate revenue (units * price) for each product and quarter
    revenue = # Your code here

    # 3. Create a pivot table showing total revenue by product and quarter
    revenue_pivot = # Your code here

    # 4. Explode the features to analyze feature frequency
    feature_analysis = # Your code here

---

# Sales Data Analysis

---
## Content

> 👩‍💻 Help the sales team understand product performance across quarters!

Your tasks:
1. Convert wide-format sales data to long format
2. Calculate quarterly revenue for each product
3. Create a pivot table of revenues
4. Analyze product features

> 💡 Use `melt()`, `pivot()`, and `explode()` operations 