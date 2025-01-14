---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Legend and Grid Exercise!
    # You'll create a visualization of energy consumption
    
    import matplotlib.pyplot as plt
    import numpy as np
    
    # Energy consumption data (kWh) for different appliances
    months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']
    heating = [300, 280, 220, 150, 100, 80]
    cooling = [50, 60, 90, 120, 200, 250]
    lighting = [100, 90, 80, 70, 60, 50]
    
    # Your tasks:
    # 1. Create a line plot showing all three consumption types
    # 2. Use different line styles and colors for each type
    # 3. Add a legend with a title "Energy Sources"
    # 4. Position the legend outside the plot
    # 5. Add a grid with dashed lines and 50% transparency
    # 6. Add appropriate axis labels and title
    
    # Write your code here:
---

# Energy Consumption Analysis

---
## Content

> 👩‍💻 Create a professional energy consumption visualization!

This exercise will help you practice:
- Plotting multiple data series
- Using different line styles
- Creating informative legends
- Positioning legends effectively
- Adding readable grids
- Making professional-looking plots

Example of what you might create:
```python
plt.figure(figsize=(10, 6))
plt.plot(months, heating, 'r-', label='Heating')
plt.legend(bbox_to_anchor=(1.05, 1))
plt.grid(True, alpha=0.5)
plt.show()
```

> 💡 Remember:
> - Use contrasting colors and styles
> - Make the legend clear and readable
> - Position the legend where it doesn't overlap data
> - Use subtle grid lines 