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

# Line Plots in Detail

---
## Content

Line plots are perfect for showing trends over time. Let's explore a real-world example:

```python
import matplotlib.pyplot as plt

# Temperature readings throughout the day
hours = [8, 10, 12, 14, 16, 18]
temp = [20, 24, 27, 28, 26, 23]

plt.plot(hours, temp, 'b-', linewidth=2)
plt.title("Temperature Throughout the Day")
plt.show()
```

> 💡 Line styles can show different types of data:
> - Solid `-` for actual measurements
> - Dashed `--` for predictions
> - Dotted `:` for uncertainty

You can plot multiple lines:

```python
# Compare two days
temp_day1 = [20, 24, 27, 28, 26, 23]
temp_day2 = [18, 22, 25, 27, 24, 21]

plt.plot(hours, temp_day1, 'r-', label='Monday')
plt.plot(hours, temp_day2, 'b--', label='Tuesday')
plt.legend()
plt.show()
```

> 🎯 Use multiple lines to compare trends or show relationships!

---
## Practice

Create a plot comparing study hours vs. test scores:

```python
weeks = [1, 2, 3, 4]
hours = [2, 3, 4, 4]
scores = [75, 85, 90, 95]

plt.???(weeks, hours, '???', label='Study Hours')
plt.???(weeks, scores, 'r-', label='Test Scores')
plt.???()
plt.show()
```

- `plot`
- `b--`
- `plot`
- `legend`
- `graph`
- `line`
- `show`

---
## Revision

Which line style shows predictions or estimated data?

???

- `'--'`
- `'-'`
- `':'`
- `'o'` 