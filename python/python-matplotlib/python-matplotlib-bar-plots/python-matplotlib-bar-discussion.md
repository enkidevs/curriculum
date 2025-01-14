---
author: enki-ai
type: normal
category: discussion
---

# When to Use Bar Plots

---
## Content

Bar plots are ideal for comparing categories. Let's look at some examples:

```python
import matplotlib.pyplot as plt

# Good for bar plots: App downloads by category
categories = ['Games', 'Social', 'Tools', 'Education']
downloads = [1200, 800, 600, 400]

plt.bar(categories, downloads)
plt.title("App Downloads by Category")
plt.ylabel("Number of Downloads")
plt.show()
```

> 💡 Bar plots work best with categorical data!

Sometimes other plots might be better:

```python
# Better as a line plot: Downloads over time
months = ['Jan', 'Feb', 'Mar', 'Apr']
trend = [500, 520, 580, 600]
plt.plot(months, trend, marker='o')
plt.title("Monthly Downloads")
plt.show()
```

> 💬 Think about these scenarios:
> - Survey responses by age group
> - Sales comparison between stores
> - Budget allocation by department
> - Movie ratings by genre
>
> Which visualization would you choose for each? Why?
> Share your thoughts about what makes bar plots effective (or not) in these cases! 