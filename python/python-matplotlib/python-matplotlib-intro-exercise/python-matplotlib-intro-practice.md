---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to your first matplotlib exercise!
    # You'll create visualizations for a fitness tracking app
    
    import matplotlib.pyplot as plt
    
    # Weekly workout data
    days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri']
    minutes = [30, 45, 20, 35, 40]
    calories = [150, 200, 100, 180, 190]
    
    # Your tasks:
    # 1. Create a line plot of workout minutes
    # 2. Add appropriate title and labels
    # 3. Add grid lines for better readability
    # 4. Make it visually appealing!
    
    # Write your code here:
---

# Create Your First Fitness Tracker

---
## Content

> 👩‍💻 Help build a fitness tracking visualization!

This exercise will help you practice:
- Creating line plots
- Adding titles and labels
- Using grids
- Making plots readable

Example of what you might create:
```python
plt.plot(days, minutes, 'go-')  # Green line with dots
plt.title("Daily Workout Minutes")
plt.grid(True)
plt.show()
```

> 💡 Remember:
> - Choose clear labels
> - Use appropriate scales
> - Make it easy to read 