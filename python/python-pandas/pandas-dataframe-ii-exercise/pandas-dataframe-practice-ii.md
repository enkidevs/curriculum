---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to code review analytics!
    import pandas as pd
    import numpy as np

    # Code review data
    data = {
        'pr_id': range(1, 11),
        'author': ['alice', 'bob', 'alice', 'charlie', 'bob',
                  'david', 'charlie', 'alice', 'bob', 'david'],
        'files_changed': [5, 10, 3, 8, 4, 
                         7, 6, 9, 2, 5],
        'additions': [100, 200, 50, 300, 75,
                     150, 250, 180, 40, 90],
        'deletions': [80, 150, 30, 200, 50,
                     100, 200, 120, 20, 60],
        'review_time': [2.5, 4.0, 1.0, 3.5, 2.0,
                       2.8, 3.2, 3.8, 1.5, 2.2],
        'status': ['merged', 'merged', 'merged', 'rejected', 'merged',
                  'pending', 'merged', 'rejected', 'merged', 'pending']
    }

    df = pd.DataFrame(data)

    # 1. Calculate net changes (additions - deletions) per PR
    df['net_changes'] = # Your code here

    # 2. Find PRs with high impact (files > 5 or net_changes > 100)
    high_impact = # Your code here

    # 3. Get average review time per author
    review_times = # Your code here

    # 4. Create a status summary (count of merged/rejected/pending per author)
    status_summary = # Your code here

---

# Code Review Analysis

---
## Content

> 👩‍💻 Help improve the code review process by analyzing PR data!

Your tasks:
1. Calculate the net code changes for each PR
2. Identify high-impact changes
3. Analyze review times by author
4. Create a PR status summary per author

> 💡 Use methods like `agg()`, boolean indexing, and `pivot_table()` 