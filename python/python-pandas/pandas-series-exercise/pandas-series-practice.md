---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the bug tracker analysis!
    import pandas as pd

    # Bug report data
    bugs = pd.Series({
        'login-error': 5,      # Priority level
        'slow-loading': 3,
        'data-loss': 5,
        'broken-link': 2,
        'typo': 1,
        'crash': 5,
        'security': 5,
        'ui-glitch': 2
    })

    # 1. How many high-priority bugs? (priority >= 4)
    high_priority = # Your code here

    # 2. What's the average priority level?
    avg_priority = # Your code here

    # 3. Sort bugs by priority (highest first)
    sorted_bugs = # Your code here

    # 4. Get unique priority levels
    priority_levels = # Your code here

---

# Bug Report Analysis

---
## Content

> 👩‍💻 Help the team prioritize bugs by analyzing the bug tracker data!

Your tasks:
1. Count high-priority bugs (priority >= 4)
2. Calculate average bug priority
3. Sort bugs by priority (descending)
4. Find unique priority levels

> 💡 Use Series methods like `value_counts()`, `mean()`, `sort_values()`, and `unique()` 