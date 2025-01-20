---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to your first Matplotlib visualization!
    # Create a line plot showing monthly coffee sales
    
    import matplotlib.pyplot as plt
    
    # Data for coffee sales
    months = [1, 2, 3, 4, 5]
    sales = [100, 120, 140, 180, 200]
    
    # Your tasks:
    # 1. Create a line plot with points using months and sales
    # 2. Add a title "Coffee Shop Sales"
    # 3. Label x-axis as "Month" and y-axis as "Sales ($)"
    # 4. Make the line red with circular markers
    
    # Type your code here:

---

# Your First Plot

---

## Content

> 👩‍💻 Your task is to create your first data visualization that:
> - **plots monthly coffee sales data as a line graph**
> - **adds a title and axis labels**
> - **customizes the line style with red color and circular markers**

Here's an example output:

![output](https://img.enkipro.com/dcd5200ebd14859da89ce707c1b19734.png)

To solve this, try using these matplotlib functions:
- plotting data (`plt.plot()`)
- adding title (`plt.title()`)
- adding axis labels (`plt.xlabel()`, `plt.ylabel()`)
- displaying the plot (`plt.show()`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Remember: Use 'ro-' as the format string to create a red line with circular markers

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Here's how to create a basic line plot:

```python
# Create a simple line plot
plt.plot(x_data, y_data)

# Add a title
plt.title("Your Title Here")

# Add axis labels
plt.xlabel("X Label")
plt.ylabel("Y Label")

# Show the plot
plt.show()
```

To customize the line style, add a format string as the third argument in `plot()`:
- 'r' makes it red
- 'o' adds circular markers
- '-' creates a solid line 