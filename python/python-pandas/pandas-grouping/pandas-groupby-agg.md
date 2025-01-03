---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# GroupBy Aggregation

---
## Content

Different metrics make sense for different columns. Maybe you want the average score but the total number of players:

```python
import pandas as pd

df = pd.DataFrame({
    'game': ['Chess', 'Chess', 'Go', 'Go'],
    'player_rating': [1200, 1400, 1600, 1800],
    'games_played': [100, 150, 200, 250]
})

# Different stats for different columns
agg_funcs = {
    'player_rating': 'mean',     # Average rating
    'games_played': ['sum', 'count']  # Total games and player count
}

result = df.groupby('game').agg(agg_funcs)
print(result)
```
```
      player_rating  games_played      
              mean          sum count
game                                 
Chess          1300          250     2
Go             1700          450     2
```

Want clearer column names?
```python
# Modern named aggregation
result = df.groupby('game').agg(
    avg_rating=('player_rating', 'mean'),
    total_games=('games_played', 'sum')
)
```

> 💡 Named aggregations make your results more readable

---
## Practice

Apply different aggregations to columns:

```python
df.groupby('group').???(
    total=(???, 'sum'),
    avg=(???, 'mean')
)
```

- `agg`
- `'value'`
- `'price'`
- `aggregate`
- `sum`
- `mean`

---
## Revision

Group and aggregate multiple columns:

```python
funcs = {
    'price': ???,
    'quantity': ['sum', ???]
}
```

- `'mean'`
- `'max'`
- `mean`
- `max` 