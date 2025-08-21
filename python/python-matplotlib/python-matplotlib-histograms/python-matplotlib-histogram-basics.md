---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Basic Histograms

---
## Content

Histograms show the distribution of numerical data:

```python
import matplotlib.pyplot as plt
import numpy as np

# Generate sample data
scores = np.random.normal(70, 10, 100)  # 100 test scores

# Create basic histogram
plt.hist(scores)
plt.title("Test Score Distribution")
plt.xlabel("Score")
plt.ylabel("Frequency")
plt.show()
```

![output](https://img.enkipro.com/c90dce3d0306171b749f604af5ed3ff8.png)

> 💡 Histograms group data into bins and show how many values fall in each bin!

You can control the bins:

```python
# Customize bins
plt.hist(scores,
         bins=20,           # Number of bins
         color='skyblue',   # Bar color
         edgecolor='black', # Border color
         alpha=0.7)         # Transparency

# Add grid for readability
plt.grid(True, alpha=0.3)
plt.show()
```

![output](https://img.enkipro.com/2ae7ea5d94e86c349537882bfb34da90.png)

> 🎯 More bins show more detail, fewer bins show general patterns!

---
## Practice

Create a histogram of ages:

```python
ages = [25, 26, 27, 25, 30, 32, 28, 24, 25]

plt.???(ages, ???=10)
plt.???("Age Distribution")
plt.show()
```

- `hist`
- `bins`
- `title`
- `bar`
- `count`
- `name`

---
## Revision

To change the number of bins in a histogram:

```python
plt.hist(data, ???=15)
```

- `bins`
- `groups`
- `sections`
- `bars` 