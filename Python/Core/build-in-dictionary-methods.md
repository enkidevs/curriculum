# Python dictionary methods.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more information here](https://www.programiz.com/python-programming/dictionary)'

---
## Content

There are several **methods** available for manipulating **dictionaries** in **Python**:
- `clear()`: removes all items from the **dictionary**;
- `copy()` : returns a shallow **copy** of the **dictionary**;
- `get(key,[d])`: returns the value of **key**, if it doesn't exist, it returns `d`;
- `items()`: lists all **dictionary** items (key, value);
- `keys()` : lists all **keys** present in the **dictionary**;
- `pop(key,[d])` : remove the item with **key** and return its value, or `d` if the key doesn't exist;
- `popitem()` : returns an arbitrary **item** from the dictionary and `KeyError` if the **dictionary** is empty;
- `values()` : lists all the values present in the **dictionary**.
- `fromkeys(seq[, v])`: return a new **dictionary** with keys from `seq` and value equal to `v`;


Let's use some of the above methods:

```
marks={}.fromkeys(['Math','English'], 0)

print(marks)
# Output: {'English': 0, 'Math': 0}

marks.pop('Math', [none])
print(marks)

# Output: ['English': 0]
```


---
## Practice

What does `get(key,[d])` return if there is no such key in the dictionary?
???

* `d`, which is the default value (`none`);
* it doesn't return anything;
* it throws an `error`.

---
## Revision

What happens if we use `popitem()` on an empty dictionary?
???

* `KeyError` will be thrown;
* nothing would happen.
* it wasn't specified.
