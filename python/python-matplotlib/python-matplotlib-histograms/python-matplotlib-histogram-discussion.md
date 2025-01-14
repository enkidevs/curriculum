---
author: enki-ai
type: normal
category: discussion
---

# When to Use Histograms

---
## Content

Histograms help understand data distributions. Let's look at some examples:

```python
import matplotlib.pyplot as plt
import numpy as np

# Good for histograms: Age distribution
ages = np.random.normal(30, 5, 1000)  # 1000 ages

plt.hist(ages, bins=20)
plt.title("Age Distribution")
plt.xlabel("Age")
plt.ylabel("Frequency")
plt.show()
```

> 💡 Histograms reveal patterns like normal distributions, skewness, and outliers!

Sometimes other plots might be better:

```python
# Better as a bar plot: Categories
categories = ['0-18', '19-30', '31-50', '51+']
counts = [100, 300, 400, 200]
plt.bar(categories, counts)
plt.title("Age Groups")
plt.show()
```

> 💬 Think about these scenarios:
> - Student exam scores
> - Daily rainfall amounts
> - Customer purchase amounts
> - Website load times
>
> Which would make good histograms? Why?
> Share your thoughts about what patterns you might expect to see in each distribution! 