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

# Basic Scatter Plots

---
## Content

Scatter plots are perfect for showing relationships between two variables:

```python
import matplotlib.pyplot as plt

# Study time vs. test scores
study_hours = [2, 3, 1, 4, 2, 3, 5, 4]
test_scores = [65, 75, 55, 85, 60, 72, 95, 82]

plt.scatter(study_hours, test_scores)
plt.title("Study Time vs. Test Scores")
plt.xlabel("Hours Studied")
plt.ylabel("Test Score")
plt.show()
```

> 💡 Each point represents one observation (e.g., one student)!

You can control point size and color:

```python
# Size based on importance
sizes = [20, 50, 100, 200, 150, 80, 250, 180]

plt.scatter(study_hours, test_scores,
           s=sizes,         # Point sizes
           c='blue',        # Point color
           alpha=0.5)       # Transparency
plt.show()
```

> 🎯 Use size and color to add extra dimensions to your data!

---
## Practice

Create a scatter plot of height vs. weight:

```python
heights = [170, 175, 160, 180]
weights = [65, 70, 60, 75]

plt.???(heights, weights)
plt.???("Height vs. Weight")
plt.show()
```

- `scatter`
- `title`
- `plot`
- `name`

---
## Revision

To make scatter plot points transparent, use:

```python
plt.scatter(x, y, ???=0.5)
```

- `alpha`
- `transparency`
- `opacity`
- `trans` 