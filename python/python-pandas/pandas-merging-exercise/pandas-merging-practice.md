---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to project dependencies analysis!
    import pandas as pd

    # Package information
    packages = pd.DataFrame({
        'package_id': range(1, 6),
        'name': ['requests', 'numpy', 'pandas', 'pytest', 'flask'],
        'version': ['2.31.0', '1.24.3', '2.0.3', '7.4.0', '2.3.3'],
        'category': ['http', 'scientific', 'data', 'testing', 'web']
    })

    # Dependencies
    dependencies = pd.DataFrame({
        'dep_id': range(1, 8),
        'package_id': [1, 1, 2, 3, 3, 4, 5],
        'requires': ['urllib3', 'certifi', 'python-dateutil',
                    'numpy', 'python-dateutil', 'pluggy', 'werkzeug']
    })

    # Issues reported
    issues = pd.DataFrame({
        'issue_id': range(1, 9),
        'package': ['requests', 'numpy', 'pandas', 'requests',
                   'flask', 'pytest', 'pandas', 'numpy'],
        'type': ['bug', 'feature', 'bug', 'security',
                'bug', 'bug', 'feature', 'security'],
        'priority': ['high', 'low', 'medium', 'high',
                    'medium', 'low', 'low', 'high']
    })

    # 1. Connect packages with their dependencies
    pkg_deps = # Your code here

    # 2. Add issue counts to package info
    pkg_issues = # Your code here

    # 3. Find packages with high-priority security issues
    security_risks = # Your code here

    # 4. Create a dependency summary (package name, version, and required packages)
    dep_summary = # Your code here

---

# Project Dependencies Analysis

---
## Content

> 👩‍💻 Help analyze package dependencies and track critical issues!

Your tasks:
1. Link packages with their dependencies
2. Count issues per package
3. Identify security risks
4. Create a dependency overview

> 💡 Use `merge()`, `join()`, and `concat()` operations 