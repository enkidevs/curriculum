---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're making a simple game scoreboard!
    # Tasks:
    # - Create an array of player scores
    # - Add new scores as players join
    # - Remove scores when players leave
    # - Split players into two teams

    import numpy as np

    # insert a new score after the 2nd score
    scores = np.array([85, 92, 78, 90])
    new = ??? # Finish this line
    print(new)

    # Remove the 3rd score
    updated = ??? # Finish this line
    print(updated)

    # Create a 2d array with the updated scores across levels
    scores_across_levels = np.array([updated, updated])
    print(scores_across_levels)

    # Remove the scores from the bottom level
    without_bottom_level = ??? # Finish this line
    print(without_bottom_level)
---

# Game Scoreboard Practice

---

## Content

> 👩‍💻 Your task is to manage a game scoreboard using NumPy arrays!

To solve this, try using:

- `np.array()` to create the initial scores
- `np.append()` to add new players
- `np.delete()` to remove players

Give it a try, and feel free to experiment!

> 💡 Remember that most NumPy operations create new arrays!

If you're stuck, try breaking it down:

1. Start with a few players
2. Add one player at a time
3. Remove players who leave
