---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Annotation Exercise!
    # You'll create an annotated analysis of website traffic
    
    import matplotlib.pyplot as plt
    import numpy as np
    
    # Website traffic data (visitors per hour)
    hours = np.arange(0, 24)
    traffic = [
        30, 20, 15, 10, 8, 15,      # 0-5
        40, 100, 150, 180, 170, 160, # 6-11
        200, 190, 180, 170, 160, 150, # 12-17
        120, 100, 80, 60, 45, 35     # 18-23
    ]
    
    # Your tasks:
    # 1. Create a line plot of hourly traffic
    # 2. Annotate the morning traffic peak with an arrow
    # 3. Annotate the afternoon peak with a box
    # 4. Add a text box explaining the daily pattern
    # 5. Use different colors and styles for annotations
    # 6. Add appropriate title and axis labels
    
    # Write your code here:
---

# Website Traffic Analysis

---
## Content

> 👩‍💻 Create an informative visualization of website traffic patterns!

This exercise will help you practice:
- Adding informative annotations
- Using different annotation styles
- Creating text boxes
- Working with arrows
- Making data tell a story

Example of what you might create:
```python
plt.figure(figsize=(12, 6))
plt.plot(hours, traffic)

plt.annotate('Morning Peak',
            xy=(9, 180),
            xytext=(7, 220),
            arrowprops=dict(facecolor='red'))

plt.show()
```

> 💡 Remember:
> - Place annotations where they don't overlap
> - Use clear, concise text
> - Make arrows point to exact features
> - Consider using different styles for different types of annotations 