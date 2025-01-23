---
author: enki-ai
type: normal
category: discussion
---

# When to Use Scatter Plots

---
## Content

Scatter plots are great for showing relationships between variables. Let's look at some examples:

```python
import matplotlib.pyplot as plt

# Good for scatter plots: Height vs Weight
heights = [170, 175, 160, 180, 165, 172, 168]
weights = [65, 72, 58, 80, 63, 70, 66]

plt.scatter(heights, weights)
plt.title("Height vs Weight")
plt.xlabel("Height (cm)")
plt.ylabel("Weight (kg)")
plt.show()
```

![output](https://img.enkipro.com/6cba2ee7fa906a06745f1c1d59eb2b11.png)

> 💡 Scatter plots reveal patterns and correlations!

Sometimes other plots might be better:

```python
# Better as a line plot: Temperature over time
hours = [1, 2, 3, 4, 5]
temp = [20, 22, 21, 23, 22]
plt.plot(hours, temp, 'b-')
plt.title("Temperature Changes")
plt.show()
```

![output](https://img.enkipro.com/80307cc1e46f97534b4b60306493b7ef.png)

> 💬 Think about these scenarios:
> - Student grades vs. study time
> - House price vs. size
> - Age vs. income
> - Daily steps vs. calories burned
>
> Which would make good scatter plots? Why?
> Share your thoughts about what patterns you might expect to see! 