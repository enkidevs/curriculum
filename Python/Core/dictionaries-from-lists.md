# Dictionaries from lists.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about creating dictionaries](https://developmentality.wordpress.com/2012/03/30/three-ways-of-creating-dictionaries-in-python/)'

---
## Content

If there are two **lists** that satisfy certain conditions, they can be turned into a single **dictionary** in **Python**.

Let's consider two lists:
- one containing some names;
- the other one containing each ones occupation.

```
names = ["Ovi","Maria","Sorin"]
jobs = ["Programmer","Doctor","Teacher"]
```

Now we need make use of `zip()` method to combine the two **lists**. What this method does is combining the two **lists** together as a zipper.

```
names_jobs = zip(name, jobs)
print(names_jobs)

# Output:
# [('Ovi', 'Programmer'),
   ('Maria', 'Doctor'),
   ('Sorin', 'Teacher')]
```

The **variable** `names_jobs` contains now the "dictionary" in the 2-tuple list form. This form can be easily transformed into a propper **dictionary** with the **method** `dict()`.

```
names_jobs_dict = dict(names_jobs)
print(names_jobs_dict)

# Output:
# {'Ovi': 'Programmer'
#  'Maria': 'Doctor'
#  'Sorin': 'Teacher'}
```

**Note** if one of the **lists** has more elements than the other, the `zip()` **method** wouldn't use the superfluous **elements**.

---
## Practice

```
countries = ["USA","UK","SP"]
temperatures = ["28","29","30","15","40"]

new = zip(countries,temperatures)
print(new)
```
What will the output look like?
???

* `[('USA','28'),('UK','28'),('SP','30')]`
* `[('USA','28'),('UK','28'),('SP','40')]`
* `{'USA':'28', 'UK':'29', 'SP':'30'}`

---
## Revision

The `zip()` method returns?
???

* 2-tuple list
* a new dictionary
* it was never specified
