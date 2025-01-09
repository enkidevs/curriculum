---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Style Exercise!
    # You'll create a professional dashboard visualization
    
    import matplotlib.pyplot as plt
    import numpy as np
    
    # Monthly performance data
    months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']
    revenue = [120, 135, 150, 142, 158, 172]
    users = [1200, 1350, 1500, 1420, 1580, 1720]
    engagement = [78, 82, 85, 83, 88, 91]
    
    # Your tasks:
    # 1. Create a 2x2 subplot layout with a professional style
    # 2. Top left: Line plot of revenue with markers
    # 3. Top right: Bar plot of user growth
    # 4. Bottom left: Line plot of engagement
    # 5. Bottom right: Text summary of key metrics
    # 6. Use appropriate colors, fonts, and grid styles
    # 7. Add a main title for the dashboard
    
    # Write your code here:
---

# Business Dashboard Creation

---
## Content

> 👩‍💻 Create a professional business performance dashboard!

This exercise will help you practice:
- Using professional styles
- Creating multi-plot dashboards
- Customizing plot elements
- Working with different plot types
- Creating consistent styling

Example of what you might create:
```python
plt.style.use('seaborn')
plt.figure(figsize=(12, 8))

# Revenue plot
plt.subplot(2, 2, 1)
plt.plot(months, revenue, 'bo-')
plt.title('Monthly Revenue')

# More plots...
plt.tight_layout()
plt.show()
```

> 💡 Remember:
> - Choose appropriate styles for business context
> - Keep styling consistent across subplots
> - Use clear, readable fonts
> - Add informative titles and labels 