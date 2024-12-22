---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're analyzing weather station data!
    # Tasks:
    # - Load and clean temperature readings
    # - Find daily temperature ranges
    # - Group data by weather conditions
    # - Create summary statistics

    # Type your code here:
    import numpy as np

    # Sample weather data (temperature, humidity, pressure)
    data = np.array([
        [25.2, 60, 1013.2],  # Day 1
        [24.8, 65, 1012.9],  # Day 2
        [np.nan, 63, 1013.1], # Day 3 (missing temp)
        [26.1, 58, 1014.2],  # Day 4
        [23.9, 71, 1011.8]   # Day 5
    ])

    # Your analysis code:
---

# Weather Data Analysis

---

## Content

> 👩‍💻 Your task is to analyze weather station data!

To solve this, try using:

- Data cleaning for missing values
- Grouping and aggregation
- Statistical analysis
- Data preparation for visualization

Give it a try, and feel free to experiment!

> 💡 Remember to handle missing values before calculations!

If you're stuck, try breaking it down:

1. Clean missing data
2. Calculate daily stats
3. Group similar conditions
4. Create summaries
