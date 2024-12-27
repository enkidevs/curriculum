---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're managing scores for multiple players across different game levels!
    # Tasks:
    # - Insert a new level of scores
    # - Join scores from different tournaments
    # - Split players into skill-based divisions

    import numpy as np

    # Starting scores for two levels
    scores = np.array([[85, 92, 78, 90],
                      [88, 95, 82, 87]])

    # Insert a new level of scores between the existing levels
    new_level = np.array([91, 89, 85, 88])
    new_scores = ??? # Insert new_level between the two existing levels
    print("Scores after inserting new level:\n", new_scores)

    # Join scores from another tournament
    tournament2 = np.array([[82, 88, 76, 85],
                          [87, 90, 84, 89],
                          [83, 86, 79, 88]])
    combined_scores = ??? # Join the two tournaments' scores
    print("Combined tournament scores:\n", combined_scores)

    # Split players into three skill divisions based on columns
    division1, division2, division3 = ??? # Split into 3 groups of players
    print("Division 1 scores:\n", division1)
    print("Division 2 scores:\n", division2)
    print("Division 3 scores:\n", division3)
---

# Game Scoreboard Practice - 2D Arrays

---

## Content

> 👩‍💻 Your task is to manage multi-level game scores using NumPy 2D arrays!

To solve this, you'll need:

- `np.insert()` with axis parameter for 2D insertion
- `np.concatenate()` or `np.vstack()` for joining 2D arrays
- `np.hsplit()` for dividing players into divisions

Give it a try! Remember that:

- The axis parameter determines where you insert/split
- axis=0 works along rows (levels)
- axis=1 works along columns (players)

> 💡 Print your arrays to verify the shapes are what you expect!
