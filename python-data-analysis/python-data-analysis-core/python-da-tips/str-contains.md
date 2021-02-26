---
author: Stefan-Stojanovic

type: normal

category: tip

practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# str.contains

---
## Content

`str.contains` is used to find a string based on at least one character.

This method only works on a `Series` or a single column of a `DataFrame`.

The syntax is:
```py
Series.str.contains
(
    pat,
    case=True,
    na=None,
    regex=True
)
```

`pat` is the sequence of characters or a regular expression.

`case` is `bool`. `True` means case sensitive, `False` means not. By default, set to `True`.

`na` determines if empty values should be filled. By default, it is off. 

`regex` is also of type `bool`. `True` means treat `pat` as a regular expression while `False` means to treat it as a string literal. By default, it is set to `True`.

As for the output, there are two possibilities.

Either a `Series` with the values or an index of boolean values.

Now, let's say we have this `DataFrame`:
```py
import pandas as pd

df = pd.DataFrame({
    'name': [
             'Joe',
             'Ana',
             'Mariana',
             'Ana-Maria',
             'Magdalena',
             'Aleksandra',
             'Aleks',
             'Sandra'
            ],
})
```
It looks like this:

![df](https://img.enkipro.com/1fe787c9f641b0c1c3b41e6c30b42ced.png)


### Series output

Here's how we would find all occurances of `ana`:
```py
df[df['name'].str.contains('ana', case=False)]
```

![ana-false](https://img.enkipro.com/b47ba7d8a682f3711ef220e2be80995e.png)

If we didn't include `case=False` the output would look like this:

![ana-true](https://img.enkipro.com/1da99b77f12d1428f54dbb6015851ed8.png)

### Bool output

If we re-wrote this:
```py
df[df['name'].str.contains('ana', case=False)]
```
as
```py
df['name'].str.contains('ana', case=False)
```
we would get a boolean output:

![boolean-output](https://img.enkipro.com/c3a5cc404a2f0fb49c34bd75d7c3cdc6.png)


--- 

## Practice

Give the `DataFrame`:

```python
import pandas as pd

df = pd.DataFrame({
    'name': [
             'Joe',
             'Ana',
             'Mariana',
             'Ana-Maria',
             'Magdalena',
             'Aleksandra',
             'Aleks',
             'Sandra'
            ],
})
```

If we did this:
```py
df[df['name']\
    .str.contains('ana', case=False)]
```


What do you think the output would be?

```python
# Option A
| Index       | Value       |
|-------------|-------------|
| 0           | False       |
| 1           | False       |
| 2           | False       |
| 3           | True        |
| 4           | False       |
| 5           | False       |
| 6           | False       |
| 7           | False       |
| 8           | False       |
| Name: name, | dtype: bool |

# Option B
|             | name        |
|-------------|-------------|
| 2           | Ana         |
| 3           | Mariana     |
| 4           | Ana-Maria   |


# The output would be
# Option ???
```

- B
- A


--- 

## Revision

Give the `DataFrame`:

```python
import pandas as pd

df = pd.DataFrame({
  'name': [
    'Joe',
    'Ana',
    'Mariana',
    'Ana-Maria',
    'Magdalena',
    'Aleksandra', 
    'Aleks',
    'Sandra'
  ],
})
```

If we did this:
```py
df['name'].str.contains('ana', case=False)
```


What do you think the output would be?

```python
# Option A
| Index       | Value       |
|-------------|-------------|
| 0           | False       |
| 1           | False       |
| 2           | False       |
| 3           | True        |
| 4           | False       |
| 5           | False       |
| 6           | False       |
| 7           | False       |
| 8           | False       |
| Name: name, | dtype: bool |

# Option B
|             | name        |
|-------------|-------------|
| 2           | Ana         |
| 3           | Mariana     |
| 4           | Ana-Maria   |


# The output would be
# Option ???
```

- A
- B
