---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Statistics](https://numpy.org/doc/stable/reference/routines.statistics.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scientific Statistics

---

## Content

Analyze experimental data statistically:

```python
# Analyze reaction times from experiment
reaction_times = np.array([
    250, 265, 240, 245, 255,  # Subject 1
    235, 255, 250, 240, 245,  # Subject 2
    260, 270, 255, 265, 260   # Subject 3
])  # milliseconds

# Basic statistics
mean_rt = np.mean(reaction_times)
std_rt = np.std(reaction_times, ddof=1)  # Sample std dev
sem = std_rt / np.sqrt(len(reaction_times))  # Std error

print(f"Mean RT: {mean_rt:.1f} ± {sem:.1f} ms")

# Confidence intervals (95%)
confidence = 0.95
z_score = 1.96  # For 95% confidence
ci_lower = mean_rt - z_score * sem
ci_upper = mean_rt + z_score * sem
```

> 💡 Use ddof=1 for sample standard deviation!

Advanced analysis:

```python
# Compare two experimental conditions
control = np.array([100, 102, 98, 103, 99])
treatment = np.array([120, 118, 122, 119, 121])

# Effect size (Cohen's d)
pooled_std = np.sqrt((np.var(control, ddof=1) + 
                     np.var(treatment, ddof=1)) / 2)
cohens_d = (np.mean(treatment) - np.mean(control)) / pooled_std

# Correlation analysis
x = np.array([1, 2, 3, 4, 5])
y = np.array([2.1, 3.8, 5.2, 6.9, 8.3])
correlation = np.corrcoef(x, y)[0, 1]
```

> 💡 Statistical tests help validate experimental results!

---

## Practice

Calculate sample standard deviation:

```python
std = np.std(data, ddof=???)
```

- `1`
- `0`
- `2`
- `None`

---

## Revision

To find the median value:

???

- `np.percentile(data, 50)`
- `np.median(data)`
- `np.middle(data)`
- `np.average(data)`
