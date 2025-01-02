---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to open source analytics!
    import pandas as pd

    # Project data
    data = {
        'name': ['numpy', 'pandas', 'requests', 'flask', 'django'],
        'stars': [22000, 35000, 48000, 58000, 65000],
        'contributors': [1200, 2800, 950, 3500, 2300],
        'language': ['Python', 'Python', 'Python', 'Python', 'Python'],
        'first_release': ['2006', '2009', '2011', '2010', '2005']
    }

    df = pd.DataFrame(data)

    # 1. Get basic info about the DataFrame
    info = # Your code here

    # 2. Sort projects by stars (most first)
    by_stars = # Your code here

    # 3. Select projects with over 2000 contributors
    big_projects = # Your code here

    # 4. Create a new column 'stars_per_contributor'
    df['stars_per_contributor'] = # Your code here

---

# Open Source Project Analysis

---

## Content

> 👩‍💻 Analyze popular Python packages to understand what makes them successful!

Your tasks:
1. Examine the DataFrame structure
2. Sort projects by popularity
3. Find projects with large communities
4. Calculate stars per contributor ratio

> 💡 Use methods like `info()`, `sort_values()`, and boolean indexing 