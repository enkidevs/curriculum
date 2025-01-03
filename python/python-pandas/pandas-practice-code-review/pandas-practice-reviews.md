---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    import pandas as pd

    # Code review data
    reviews = pd.DataFrame({
        'pr_id': range(1, 8),
        'author': ['alice', 'bob', 'alice', 'charlie', 
                  'bob', 'alice', 'charlie'],
        'reviewer': ['bob', 'charlie', 'charlie', 'alice',
                    'alice', 'bob', 'bob'],
        'files_changed': [5, 10, 3, 8, 4, 6, 7],
        'review_date': ['2024-01-15', '2024-01-15', '2024-01-16',
                       '2024-01-16', '2024-01-17', '2024-01-17',
                       '2024-01-17']
    })

    # Your code here:
    
    # 1. Find each reviewer's average files per review
    
    # 2. Count reviews done by each person
    
    # 3. Find who reviews whose code most oftenq
---

# Code Review Analytics

---
## Content

> 👩‍💻 Analyze code review patterns to improve team collaboration!

Your tasks:
1. Calculate average files reviewed per person
2. Count total reviews by reviewer
3. Create a reviewer-author relationship table

Hints:
- Use `groupby()` and `mean()` for averages
- Try `value_counts()` for counting reviews
- Look into `pd.crosstab()` for relationship analysis 