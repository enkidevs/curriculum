# Convert lists to dictionaries
author: SebaRaba

levels:

  - beginner

type: normal

category: how-to

links:

  - '[More about creating dictionaries](https://developmentality.wordpress.com/2012/03/30/three-ways-of-creating-dictionaries-in-python/)'

---
## Content

Usauly, two lists can be converted into a **dictionary**.

Let's consider two lists:
- one containing some names
- the other one containing each ones occupation

```
names = ['Ovi', 'Maria', 'Sorin']
jobs = ['Chef', 'Doctor', 'Judge']
```

Now, there is a method called `zip()` which comes in hand when we need to combine two lists. This method will generate a list of `tuple`s where the `i`-th tuple contains the `i`-th element from each of the given lists. In order to `print` the list it creates we need to use the `list()` method as well:

```
names_jobs = zip(name, jobs)
print(list(names_jobs))

# Output:
# [('Ovi', 'Chef'),
#  ('Maria', 'Doctor'),
#  ('Sorin', 'Judge')]
```

Our `names_jobs` variable contains the above-outputted list of `tuple`s. Now, we can easily **convert it to a dictionary object** via the built-in `dict()` method:

```
names_jobs_dict = dict(names_jobs)
print(names_jobs_dict)

# Output:
# {'Ovi': 'Chef'
#  'Maria': 'Doctor'
#  'Sorin': 'Judge'}
# Voila!!
```

**Note** if one of the lists has more elements than the other, the `zip()` method won't use the superfluous **elements**.

```
names = ['Ovi', 'Maria', 'Sorin', 'Seb']
jobs = ['Chef', 'Doctor', 'Judge']

names_jobs = zip(names,jobs)
print(dict(list(names_jobs)))

# Output:
# {'Ovi': 'Chef', 'Maria': 'Doctor',
# 'Sorin': 'Judge'}
```

---
## Practice

Suppose we have the following lists. We want to know the temperature in UK. Fill the gaps accordingly:
```
countries = ['USA','UK','SP']
temp = ['28','29','30']

new = __(__(countries,temp))
new.__('USA')
new.__('SP')

print(new)
```
???

* dict(), zip(), pop(), pop()
* zip(), dict(), pop(), pop()
* zip(), dict(), popitem(), pop()

---
## Revision

The `zip()` method returns?
???

* 2-tuple list
* a new dictionary
* it was never specified
