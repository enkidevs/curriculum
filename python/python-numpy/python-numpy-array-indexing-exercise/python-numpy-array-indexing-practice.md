---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Student Records Exercise!
    # You're building a grade analysis system.

    import numpy as np

    # Class test scores (rows: students, columns: tests)
    scores = np.array([
        [85, 90, 88, 92],  # Student 1
        [75, 82, 95, 88],  # Student 2
        [92, 95, 85, 90],  # Student 3
        [88, 80, 85, 78],  # Student 4
        [95, 92, 90, 85]   # Student 5
    ])

    # Your tasks:
    # 1. Get scores for first and last students
    first_last = scores[???, ???]

    # 2. Find all scores above 90
    high_scores = scores[???]

    # 3. Get first two tests for all students
    early_tests = scores[???, ???]

    # 4. Select specific scores (Student 2/Test 3, Student 4/Test 1)
    selected = scores[???, ???]

    # 5. Reverse the order of students
    reversed_scores = scores[???]

---

# Grade Analysis System

---

## Content

> 👩‍💻 Practice array indexing by analyzing student test scores!

This exercise covers:

- Basic indexing (accessing elements)
- Boolean indexing (filtering)
- Slicing (selecting ranges)
- Fancy indexing (selecting specific elements)
- Index tricks (reversing, negative indices)

Example operations:

```python
# Get one student's scores
student = scores[0]          # First student
# array([85, 90, 88, 92])

# Find passing scores (>= 85)
passing = scores >= 85
passed = scores[passing]

# Get first two tests
tests = scores[:, 0:2]

# Select specific scores
students = [1, 3]           # Students 2 and 4
tests = [2, 0]             # Tests 3 and 1
specific = scores[students, tests]
```

> 💡 Remember:
>
> - Use boolean masks for filtering
> - Use slices for ranges
> - Use arrays of indices for specific elements
> - Use negative indices from the end
