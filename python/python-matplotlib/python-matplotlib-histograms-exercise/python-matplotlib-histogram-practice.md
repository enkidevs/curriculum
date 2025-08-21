---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Histogram Exercise!
    # You'll analyze student performance data
    
    import matplotlib.pyplot as plt
    import numpy as np
    
    # Two classes' test scores
    class_a = [85, 92, 78, 85, 90, 88, 95, 82, 88, 85, 
               90, 87, 83, 89, 91, 85, 88, 90, 87, 86]
    class_b = [79, 85, 72, 80, 88, 82, 90, 76, 84, 80, 
               85, 81, 76, 83, 87, 80, 82, 85, 80, 79]
    
    # Your tasks:
    # 1. Create side-by-side histograms comparing both classes
    # 2. Use different colors for each class
    # 3. Add appropriate titles and labels
    # 4. Add grid lines for better readability
    # 5. Make sure the bins align for fair comparison
    
    # Write your code here:
---

# Analyzing Test Score Distributions

---
## Content

> 👩‍💻 Create a visualization comparing two classes' performance!

This exercise will help you practice:
- Creating side-by-side histograms
- Setting consistent bin sizes
- Adding descriptive labels
- Using colors effectively
- Making professional comparisons

Example of what you might create:
```python
plt.figure(figsize=(12, 5))

plt.subplot(1, 2, 1)
plt.hist(class_a, bins=10, color='skyblue')
plt.title('Class A Scores')

plt.subplot(1, 2, 2)
plt.hist(class_b, bins=10, color='lightgreen')
plt.title('Class B Scores')

plt.show()
```

> 💡 Remember:
> - Use the same number of bins for fair comparison
> - Add clear titles and labels
> - Consider using a grid for readability
> - Think about what the distributions tell you about the classes 