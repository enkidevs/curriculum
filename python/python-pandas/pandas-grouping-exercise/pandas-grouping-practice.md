---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to team performance analysis!
    import pandas as pd

    # Developer activity data
    data = {
        'dev_id': range(1, 9),
        'name': ['alice', 'bob', 'charlie', 'alice',
                'bob', 'charlie', 'alice', 'bob'],
        'team': ['frontend', 'frontend', 'frontend', 'backend',
                'backend', 'backend', 'data', 'data'],
        'quarter': ['Q1', 'Q1', 'Q1', 'Q2',
                   'Q2', 'Q2', 'Q2', 'Q2'],
        'commits': [50, 40, 45, 60,
                   55, 48, 70, 65],
        'reviews': [15, 12, 14, 18,
                   16, 15, 20, 19],
        'bugs_fixed': [5, 4, 4, 7,
                      6, 5, 8, 7]
    }

    df = pd.DataFrame(data)

    # 1. Calculate average commits per team
    team_commits = # Your code here

    # 2. Find the top performer (by commits) in each team
    top_performers = # Your code here

    # 3. Get total activity (commits + reviews) by team and quarter
    activity = # Your code here

    # 4. Calculate each dev's contribution % to their team's total commits
    contributions = # Your code here

---

# Team Performance Analysis

---
## Content

> 👩‍💻 Help track team performance and identify star contributors!

Your tasks:
1. Compare team productivity
2. Find each team's top performer
3. Analyze quarterly team activity
4. Calculate individual contribution percentages

> 💡 Use `groupby()`, `agg()`, `apply()`, and `transform()` 