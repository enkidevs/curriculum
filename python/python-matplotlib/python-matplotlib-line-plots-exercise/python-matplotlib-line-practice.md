---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Line Plot Exercise!
    # You'll analyze a week of stock market data
    
    import matplotlib.pyplot as plt
    
    # Stock prices for two companies
    days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri']
    company_a = [100, 102, 104, 103, 105]
    company_b = [90, 92, 89, 91, 94]
    
    # Your tasks:
    # 1. Create a line plot comparing both companies
    # 2. Use different line styles (solid vs dashed)
    # 3. Add markers to show daily prices
    # 4. Include a legend, title, and axis labels
    # 5. Add a grid for better readability
    
    # Write your code here:
---

# Stock Price Comparison

---
## Content

> 👩‍💻 Create a stock price comparison visualization!

This exercise will help you practice:
- Plotting multiple lines
- Using different line styles
- Adding markers
- Creating legends
- Making professional-looking plots

Example of what you might create:
```python
plt.plot(days, company_a, 'bo-', label='Company A')
plt.title("Stock Prices")
plt.grid(True)
plt.show()
```

> 💡 Remember:
> - Use different colors for each company
> - Make sure lines are distinguishable
> - Label everything clearly 