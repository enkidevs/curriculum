---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to GitHub repository analysis!
    import pandas as pd

    # Repository data with multi-level index
    data = {
        'stars': [1000, 1200, 800, 900, 2000, 2200, 1800, 1900],
        'forks': [300, 400, 200, 250, 800, 900, 700, 750],
        'issues': [50, 60, 40, 45, 100, 110, 90, 95]
    }

    # Create MultiIndex
    index = pd.MultiIndex.from_tuples([
        ('web', '2023'), ('web', '2024'),
        ('mobile', '2023'), ('mobile', '2024'),
        ('data', '2023'), ('data', '2024'),
        ('ai', '2023'), ('ai', '2024')
    ], names=['category', 'year'])

    df = pd.DataFrame(data, index=index)

    # 1. Get all 2024 repositories
    repos_2024 = # Your code here

    # 2. Find web development repos
    web_repos = # Your code here

    # 3. Get stars for AI repos in 2023
    ai_stars = # Your code here

    # 4. Compare data repos across years
    data_comparison = # Your code here

---

# GitHub Repository Analysis

---

## Content

> 👩‍💻 Analyze GitHub trends across different tech categories and years!

Your tasks:
1. Extract all repositories from 2024
2. Find web development repositories
3. Get AI repository stars for 2023
4. Compare data science repos between years

> 💡 Use `loc`, `xs`, and multi-level indexing techniques 