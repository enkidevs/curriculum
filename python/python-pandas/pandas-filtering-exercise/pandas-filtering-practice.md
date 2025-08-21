---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to pull request analysis!
    import pandas as pd

    # Pull request data
    data = {
        'id': range(1, 11),
        'title': [
            'Fix login bug', 'Update docs', 'Add dark mode',
            'Fix memory leak', 'Update README', 'Add tests',
            'Optimize queries', 'Fix typos', 'Add API docs',
            'Security patch'
        ],
        'author': [
            'alice', 'bob', 'charlie', 'alice', 'david',
            'bob', 'charlie', 'alice', 'david', 'bob'
        ],
        'changes': [150, 50, 300, 800, 20, 
                   400, 600, 10, 200, 250],
        'reviews': [3, 1, 4, 5, 1, 
                   3, 4, 1, 2, 3],
        'status': [
            'merged', 'open', 'merged', 'merged', 'open',
            'merged', 'open', 'merged', 'open', 'merged'
        ]
    }

    df = pd.DataFrame(data)

    # 1. Find large PRs (>500 changes) that are still open
    large_open = # Your code here

    # 2. Get PRs with 'fix' in title (case insensitive)
    fixes = # Your code here

    # 3. Find well-reviewed PRs (3+ reviews) by 'alice' or 'bob'
    reviewed = # Your code here

    # 4. Get merged PRs with either small changes (<100) or many reviews (>3)
    interesting = # Your code here

---

# Pull Request Analysis

---
## Content

> 👩‍💻 Help the team understand their PR patterns and improve the review process!

Your tasks:
1. Find large open pull requests
2. Identify bug fixes
3. Find well-reviewed PRs from specific authors
4. Get interesting merged PRs

> 💡 Use `query()`, `str.contains()`, `isin()`, and boolean operators 