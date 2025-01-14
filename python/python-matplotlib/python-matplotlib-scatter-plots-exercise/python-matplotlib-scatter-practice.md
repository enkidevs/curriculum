---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Scatter Plot Exercise!
    # You'll analyze fitness tracking data
    
    import matplotlib.pyplot as plt
    
    # Fitness data: exercise duration, calories burned, heart rate
    duration = [30, 45, 20, 35, 40, 50, 25, 45]  # minutes
    calories = [200, 300, 150, 225, 250, 350, 175, 320]
    heart_rate = [120, 140, 110, 125, 130, 145, 115, 135]
    
    # Your tasks:
    # 1. Create a scatter plot of duration vs. calories
    # 2. Color the points based on heart rate
    # 3. Add a colorbar showing heart rate scale
    # 4. Make points larger for emphasis (size=100)
    # 5. Add appropriate labels and title
    
    # Write your code here:
---

# Fitness Data Analysis

---
## Content

> 👩‍💻 Create a visualization of workout effectiveness!

This exercise will help you practice:
- Basic scatter plots
- Color mapping
- Adding colorbars
- Customizing point appearance
- Creating informative labels

Example of what you might create:
```python
plt.scatter(duration, calories, c=heart_rate)
plt.colorbar(label='Heart Rate')
plt.show()
```

> 💡 Remember:
> - Use `cmap` to choose a color scheme
> - Add clear axis labels
> - Consider using transparency (alpha) 