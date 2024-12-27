---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Weather Analysis Exercise!
    # You're analyzing meteorological data.

    import numpy as np

    # Generate random temperature data with decimals
    # 3 cities, 4 days
    temps = np.array([
        [23.4, 25.6, 22.8, 24.2],  # City A
        [20.1, 21.5, 19.7, 20.9],  # City B
        [26.3, 28.1, 25.5, 27.0]   # City C
    ])

    # Rainfall data (mm) with some negative values due to measurement errors
    rainfall = np.array([
        [-0.5, 2.3, 5.7, 1.2],  # City A
        [3.2, -0.1, 4.8, 2.9],  # City B
        [1.8, -0.3, 3.5, 6.2]   # City C
    ])

    # Your tasks:
    # 1. Fix negative rainfall values by using absolute values
    clean_rainfall = np.???(rainfall)

    # 2. Calculate daily temperature differences from mean
    temp_mean = np.mean(temps, axis=1)  # Mean per city
    temp_diff = temps - ???  # Broadcast mean across days

    # 3. Round temperatures to 1 decimal place
    rounded_temps = np.???(temps, decimals=???)

    # 4. Round rainfall up to nearest whole number
    ceiling_rain = np.???(clean_rainfall)

    # 5. Calculate squared temperature differences
    temp_squared = np.???(temp_diff, ???)
---

# Weather Analysis

---

## Content

> 👩‍💻 Practice array math by analyzing meteorological data!

This exercise covers all array math concepts:

- Basic math (temperature conversion)
- Rounding operations

Example operations:

```python
# Basic math
celsius = (fahrenheit - 32) * 5/9

# Rounding
rounded = np.round(values, decimals=1)
```

> 💡 Remember:
>
> - Use axis=1 for operations across days
> - Use axis=0 for operations across cities