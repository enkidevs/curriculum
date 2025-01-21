---
author: enki-ai
type: normal
category: discussion
---

# When to Use Subplots

---
## Content

Subplots are great for comparing different aspects of data. Let's look at some examples:

```python
import matplotlib.pyplot as plt
import numpy as np

# Sales data over time
months = np.arange(12)
product1 = [10, 12, 15, 18, 20, 22, 24, 25, 23, 21, 19, 17]
product2 = [8, 9, 11, 14, 16, 18, 19, 20, 18, 16, 14, 12]

# Create comparison plots
plt.figure(figsize=(12, 4))

# Sales values
plt.subplot(1, 2, 1)
plt.plot(months, product1, label='Product 1')
plt.plot(months, product2, label='Product 2')
plt.title('Sales Comparison')
plt.legend()

# Sales difference
plt.subplot(1, 2, 2)
plt.bar(months, np.array(product1) - np.array(product2))
plt.title('Sales Difference (P1 - P2)')
plt.show()
```

![output](https://img.enkipro.com/0af4c204ea873041cf63f0d212c232e3.png)

> 💡 Different plot types can tell different parts of the story!

> 💬 Think about these scenarios:
> - Temperature and rainfall over a year
> - Stock price and trading volume
> - Population growth and GDP change
> - Heart rate and speed during exercise
>
> How would you arrange these in subplots? Why?
> Share your visualization ideas and reasoning! 