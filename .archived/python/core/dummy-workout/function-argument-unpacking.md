---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Function argument unpacking

---
## Content

Unpack a list or a dictionary as function arguments with `*` and `**`.

Example:
```python
def draw_point(x, y):
    # do some magic
point_foo = (3, 4)
point_bar = {'y': 3, 'x': 2}
draw_point(*point_foo)
draw_point(**point_bar)
```