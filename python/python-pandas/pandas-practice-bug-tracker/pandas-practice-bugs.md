---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    import pandas as pd

    # Bug reports data
    bugs = pd.DataFrame({
        'id': range(1, 7),
        'title': ['Login error', 'Slow loading', 'Crash on save',
                 'Missing data', 'UI glitch', 'API timeout'],
        'status': ['open', 'fixed', 'open', 'fixed', 'open', 'open'],
        'priority': ['high', 'medium', 'high', 'low', 'low', 'high'],
        'reported_date': ['2024-01-15', '2024-01-16', '2024-01-16',
                         '2024-01-17', '2024-01-17', '2024-01-17']
    })

    # Your code here:
    
    # 1. Convert reported_date to datetime
    
    # 2. Find high-priority open bugs
    
    # 3. Count bugs by status and priority

---

# Bug Tracker Dashboard

---
## Content

> 👩‍💻 Create a simple bug tracking dashboard!

Your tasks:
1. Convert dates to datetime format
2. Filter for critical bugs (high priority and open)
3. Create a summary of bugs by status and priority

Hints:
- Use `pd.to_datetime()` for date conversion
- Combine conditions with `&` for filtering
- Try `pivot_table()` or `crosstab()` for the summary 