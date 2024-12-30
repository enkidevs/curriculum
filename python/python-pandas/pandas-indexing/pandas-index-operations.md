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

# Index Operations

---

## Content

Sometimes you need to reorganize how your data is indexed. Maybe you want to sort by usernames instead of signup dates:

```python
import pandas as pd

df = pd.DataFrame({
    'username': ['code_ninja', 'bug_hunter', 'dev_guru'],
    'points': [850, 920, 730],
    'rank': ['gold', 'gold', 'silver']
}, index=['u1', 'u2', 'u3'])

# Convert index to a regular column
numbered = df.reset_index()
print(numbered)
```
```
  index   username  points    rank
0    u1  code_ninja    850    gold
1    u2  bug_hunter    920    gold
2    u3    dev_guru    730  silver
```

Want to organize by rank?
```python
# Use rank as the new index
by_rank = df.set_index('rank')
print(by_rank)
```
```
        username  points
rank                    
gold   code_ninja    850
gold   bug_hunter    920
silver   dev_guru    730
```

> 💡 Use `set_index()` with `inplace=True` to modify the original DataFrame

---

## Practice

Reset index to default numbers:

```python
new_df = df.???()
```

- `reset_index`
- `clear_index`
- `default_index`
- `remove_index`

---

## Revision

Set 'name' column as the new index:

```python
df = df.???(???)
```

- `set_index`
- `'name'`
- `index`
- `as_index` 