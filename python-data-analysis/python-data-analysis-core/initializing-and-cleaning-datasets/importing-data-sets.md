---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - >-
    [Netflix Dataset](https://www.kaggle.com/shivamb/netflix-shows/version/3){website}
   
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# Importing Datasets

---
## Content

Previously we learned how to create a `Series` and a `DataFrame` and what they are.

Now we will learn how to import a data set into a `DataFrame`.

Before that, we should first decide if we are importing from an external or a local source. After that, we have to decide what type of file we want to import.

For now, we will import a `CSV` file called "netflix_titles.csv". 

![netflix-titles-head](https://img.enkipro.com/c9637b9513606236454371c7c6d749dd.png)

If we are importing externally, we can just use `pandas` `.read_csv` module with the `URL`  inside.

```py
pd.read_csv('URL')
```

On the other hand, if we are importing from a local source, we first have to make sure the file is in our working Python directory[1].

Now we can import it into our project.

> 💡 Add this code to the same notebook we created in the previous workout.

```py
import pandas as pd

importedRawData = pd.read_csv('netflix_titles.csv')
```

If you want to use the same dataset, you can download it using the link in the **Learn More** section.


---
## Revision

Import a dataset called `my_data.csv` into a `DataFrame` called `df`.

```py
??? = pd.???(???)
```

- df
- read_csv
- 'my_data.csv'
- my_data.csv
- readCSV

---

## Footnotes

[1: Working Directory]

To check your current working directory, you have to first import the `os` library and use its `.getcwd()` module.

```py
import os

os.getcwd()
```

The `.getcwd()` module will output the current working directory.

Just locate the folder using the path provided by the `.getcwd()` module and move the CSV file there.

To check if a file is in a specific folder, we need to use the `.listdir()` method from the same module:

```python
import os

# Add the path to our folder to the path variable
path = "C:\Windows\System32\Python Testing"

# Create an object that holds a list of all the files located in the path
directories = os.listdir(path)
```

We can print the files in a list:
```python
print(directories)

# Output:
[
  'Analyzing Netflix Titles.ipynb', 
  'cars.csv', 
  'daily_csv.csv', 
  'monthly_csv.csv', 
  'netflix_titles.csv', 
  'unigram_freq.csv'
]
```

Or use a for loop:

```python
for file in directories:
    print(file)

# Analyzing Netflix Titles.ipynb
# cars.csv
# daily_csv.csv
# monthly_csv.csv
# netflix_titles.csv
# unigram_freq.csv
```
