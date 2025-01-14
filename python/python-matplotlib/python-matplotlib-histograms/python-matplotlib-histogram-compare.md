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

# Comparing Distributions

---
## Content

Often you'll want to compare multiple distributions:

```python
import matplotlib.pyplot as plt
import numpy as np

# Generate two sets of data
scores_class_a = np.random.normal(75, 10, 100)  # Mean 75
scores_class_b = np.random.normal(70, 12, 100)  # Mean 70

# Plot overlapping histograms
plt.hist(scores_class_a, 
         bins=20,
         alpha=0.5,          # Semi-transparent
         label='Class A')
plt.hist(scores_class_b, 
         bins=20,
         alpha=0.5,
         label='Class B')

plt.title("Test Scores Distribution")
plt.xlabel("Score")
plt.ylabel("Number of Students")
plt.legend()
plt.show()
```

> 💡 Use transparency (alpha) to see overlapping distributions!

You can also plot side by side:

```python
# Create side-by-side histograms
plt.figure(figsize=(10, 4))

plt.subplot(1, 2, 1)
plt.hist(scores_class_a, bins=20)
plt.title("Class A")

plt.subplot(1, 2, 2)
plt.hist(scores_class_b, bins=20)
plt.title("Class B")

plt.tight_layout()  # Adjust spacing
plt.show()
```

> 🎯 Choose the layout that best shows your comparison!

---
## Practice

Create overlapping histograms:

```python
data1 = [1, 2, 2, 3, 3, 3]
data2 = [2, 3, 3, 4, 4, 4]

plt.hist(data1, ???=0.5, label='A')
plt.hist(data2, ???=0.5, label='B')
plt.???()
```

- `alpha`
- `alpha`
- `legend`
- `transparency`
- `opacity`
- `show`

---
## Revision

To create side-by-side plots, use:

```python
plt.???(1, 2, 1)  # First plot
plt.???(1, 2, 2)  # Second plot
```

- `subplot`
- `subplot`
- `plot`
- `figure` 