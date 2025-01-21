---
author: enki-ai
type: normal
category: discussion
---

# When to Use Legends and Grids

---
## Content

Let's explore when and how to use legends and grids effectively:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create data for different investment strategies
years = np.arange(2015, 2024)
conservative = 100 * (1.05)**np.arange(9)  # 5% growth
moderate = 100 * (1.08)**np.arange(9)      # 8% growth
aggressive = 100 * (1.12)**np.arange(9)    # 12% growth

# Plot with informative legend and grid
plt.figure(figsize=(10, 6))
plt.plot(years, conservative, 'b-', label='Conservative (5%)')
plt.plot(years, moderate, 'g--', label='Moderate (8%)')
plt.plot(years, aggressive, 'r:', label='Aggressive (12%)')

plt.legend(title='Investment Strategies',
          loc='upper left')
plt.grid(True, linestyle='--', alpha=0.7)
plt.title('Investment Growth Comparison')
plt.show()
```

![output](https://img.enkipro.com/08d1344cf1f6688ef1f172b85c5dbb00.png)

> 💡 Legends are essential when comparing multiple data series!

> 💬 Think about these scenarios:
> - Weather data showing temperature, humidity, and pressure
> - Sales data comparing multiple products over time
> - Fitness tracking with steps, distance, and calories
> - Network traffic from different sources
>
> How would you use legends and grids to make these plots more readable?
> Share your thoughts about what makes effective legends and when grids help or hinder! 