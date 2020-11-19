---
author: Stefan-Stojanovic

type: normal

category: how to

---

# DataFrame arrays

---
## Content

Previously we learned to create a 1-Dimensional `pandas` array called `Series`.

Now we will learn about `pandas` 2-Dimensional arrays called `DataFrames`.

`DataFrames` have three components:
- data
- rows
- columns  

Just like `Series`, `DataFrames` can be created from any data type (strings, objects, integers, etc.).

> Unlike `Series`, `DataFrames` are heterogeneous. You can have more than one data type in a `DataFrame`.

Here is a `DataFrame` created from a dictionary:
```Python
randomDictonary = 
  {
    "Name": ["Simba"],
     "Breed": ["Terrier"],
     "Age":[5]
  }

firstDataFrame = pd.DataFrame(data=randomDictonary)
```

When we print this `DataFrame`:

```python
print(firstDataFrame)
```

we get the output:
```plain-text
    Name    Breed Age
0  Simba  Terrier   5
```

These `DataFrames` are aligned in tabular format. They have labels and are created with rows and columns.

---
## Practice

`DataFrames` are ??? ??? arrays.

- 2-Dimensional
- pandas
- 1-Dimensional 
- numpy

---
## Revision

Create a `DataFrame` array from the provided dictionary.

```Python
randomDictonary = 
  {
    "Name": ["Simba"],
     "Breed": ["Terrier"],
     "Age":[5]
  }

someDataFrame = ???.???(???=randomDictonary)
```

- pd
- DataFrame
- data
- Dataframe
- Data
- PD