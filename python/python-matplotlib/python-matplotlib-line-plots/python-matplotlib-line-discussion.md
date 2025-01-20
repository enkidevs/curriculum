---
author: enki-ai
type: normal
category: discussion
---

# When to Use Line Plots

---
## Content

Line plots are great for certain types of data. Let's look at some examples:

```python
# Good for line plots: Temperature over time
hours = [0, 6, 12, 18, 24]
temp = [15, 13, 22, 19, 15]
plt.plot(hours, temp, 'b-')
plt.title("Daily Temperature")
plt.show()
```

![output](https://img.enkipro.com/22ff1d9f6e8afa72d20d6731aa298ec5.png)

> 💡 Line plots work best when points should be connected!

Sometimes other plots might be better:

```python
# Maybe better as a bar plot: Monthly rainfall
months = ['Jan', 'Feb', 'Mar']
rain = [50, 40, 60]
plt.bar(months, rain)
plt.title("Monthly Rainfall")
plt.show()
```

![output](https://img.enkipro.com/22ff1d9f6e8afa72d20d6731aa298ec5.png)

> 💬 Think about these scenarios:
> - Stock prices throughout a day
> - Number of students in each grade
> - Website visitors per hour
> - Heights of team members
>
> Which would you show with a line plot? Why?
> Share your thoughts and see what others think! 