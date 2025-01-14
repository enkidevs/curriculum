---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Subplot Exercise!
    # You'll analyze weather data across different cities
    
    import matplotlib.pyplot as plt
    import numpy as np
    
    # Weather data for three cities
    months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']
    
    # Temperature data (°C)
    city1_temp = [5, 7, 10, 15, 20, 25]
    city2_temp = [2, 4, 8, 13, 18, 23]
    city3_temp = [8, 10, 14, 19, 24, 29]
    
    # Rainfall data (mm)
    city1_rain = [40, 35, 50, 45, 30, 25]
    city2_rain = [50, 45, 55, 40, 35, 30]
    city3_rain = [30, 25, 40, 35, 25, 20]
    
    # Your tasks:
    # 1. Create a 2x2 subplot layout
    # 2. Top left: Line plot comparing temperatures
    # 3. Top right: Bar plot of total rainfall
    # 4. Bottom: Large plot showing temperature vs rainfall correlation
    # 5. Add appropriate titles, labels, and legends
    
    # Write your code here:
---

# Weather Data Analysis

---
## Content

> 👩‍💻 Create a comprehensive weather data visualization!

This exercise will help you practice:
- Creating complex subplot layouts
- Combining different plot types
- Sharing axes when appropriate
- Adding legends and labels
- Making professional-looking visualizations

Example of what you might create:
```python
plt.figure(figsize=(12, 8))

# Temperature comparison
plt.subplot(2, 2, 1)
plt.plot(months, city1_temp, label='City 1')
plt.legend()

# More plots...
plt.show()
```

> 💡 Remember:
> - Use `subplot(2, 2, (3, 4))` for the bottom plot
> - Add clear labels
> - Consider using different colors for each city
> - Make sure plots are readable 