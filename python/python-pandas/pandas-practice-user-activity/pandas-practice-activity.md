---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    import pandas as pd

    # User activity data
    activity = pd.DataFrame({
        'user_id': ['U1', 'U2', 'U1', 'U3', 'U2', 'U3', 'U1', 'U2'],
        'action': ['login', 'search', 'logout', 'login', 
                  'login', 'search', 'login', 'logout'],
        'timestamp': ['2024-01-15 09:20', '2024-01-15 10:30',
                     '2024-01-15 11:45', '2024-01-15 13:15',
                     '2024-01-15 14:30', '2024-01-15 15:20',
                     '2024-01-15 16:10', '2024-01-15 17:45'],
        'device': ['mobile', 'desktop', 'mobile', 'desktop',
                  'mobile', 'desktop', 'desktop', 'mobile']
    })

    # Your code here:
    
    # 1. Convert timestamps and add hour column
    
    # 2. Find most active hours (by action count)
    
    # 3. Calculate device usage percentage per user

---

# User Activity Analysis

---
## Content

> 👩‍💻 Discover when and how users interact with your app!

Your tasks:
1. Process timestamps and extract hours
2. Identify peak activity hours
3. Analyze device preferences per user

Hints:
- Use `pd.to_datetime()` and `.dt.hour`
- Try `value_counts()` with `normalize=True`
- Look into `groupby()` with multiple columns 