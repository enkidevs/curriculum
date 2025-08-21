---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    import pandas as pd

    # Customer feedback data
    feedback = pd.DataFrame({
        'id': range(1, 8),
        'rating': [4, 3, 5, 'FIVE', 3, '4', 'three'],
        'sentiment': ['POS', 'neutral', 'POSITIVE', 
                     'pos', 'NEG', 'negative', 'Neutral'],
        'category': ['UI/UX', 'performance', 'features',
                    'ui/ux', 'Performance', 'security', 'Features'],
        'response_needed': ['Y', 'N', 'no', 
                          'yes', 'Yes', 'N', 'y']
    })

    # Your code here:
    
    # 1. Standardize ratings (convert to numbers 1-5)
    
    # 2. Clean sentiment values (positive/neutral/negative)
    
    # 3. Normalize categories (lowercase)
    
    # 4. Convert response_needed to boolean
---

# Customer Feedback Analysis

---
## Content

> 👩‍💻 Help clean and standardize customer feedback data!

Your tasks:
1. Convert all ratings to numeric values
2. Standardize sentiment categories
3. Make categories consistent
4. Create clear yes/no flags

Hints:
- Try combining `replace()` and `astype()`
- Use `str.lower()` for case normalization
- Look into `map()` for simple conversions
- Consider `apply()` for complex transformations 