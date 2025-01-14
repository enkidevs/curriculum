---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Bar Plot Exercise!
    # You'll analyze coffee shop sales data
    
    import matplotlib.pyplot as plt
    
    # Coffee shop data
    drinks = ['Espresso', 'Latte', 'Cappuccino', 'Tea']
    morning = [45, 80, 60, 35]   # Morning sales
    evening = [30, 50, 40, 45]   # Evening sales
    
    # Your tasks:
    # 1. Create grouped bars comparing morning and evening sales
    # 2. Add value labels on top of each bar
    # 3. Use different colors for morning and evening
    # 4. Add a title, legend, and axis labels
    # 5. Add a grid for better readability
    
    # Write your code here:
---

# Coffee Shop Sales Analysis

---
## Content

> 👩‍💻 Create a visualization comparing coffee shop sales!

This exercise will help you practice:
- Creating grouped bar plots
- Adding value labels
- Using colors effectively
- Adding legends and labels
- Making professional-looking plots

Example of what you might create:
```python
x = np.arange(len(drinks))
width = 0.35

plt.bar(x - width/2, morning, width, label='Morning')
plt.bar(x + width/2, evening, width, label='Evening')
plt.xticks(x, drinks)
plt.show()
```

> 💡 Remember:
> - Offset bars using width/2
> - Add clear labels
> - Use contrasting colors
> - Include a legend 