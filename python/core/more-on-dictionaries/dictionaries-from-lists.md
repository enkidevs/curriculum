---
author: SebaRaba

levels:

  - beginner

type: normal

category: how to
aspects:
  - introduction
  - workout
standards:
  python.native-types-operations.6: 10

links:

  - '[More about creating dictionaries](https://developmentality.wordpress.com/2012/03/30/three-ways-of-creating-dictionaries-in-python/){website}'


---

# Convert lists to dictionaries

---
## Content

Usually, two lists can be converted into a **dictionary**.

Let's consider two lists:
- one containing some names
- the other one containing each ones occupation

```
names = ['Ovi', 'Maria', 'Sorin']
jobs = ['Chef', 'Doctor', 'Judge']
```

Now, there is a method called `zip()` which comes in hand when we need to combine two lists. This method will generate a list of `tuple`s where the `i`-th tuple contains the `i`-th element from each of the given lists. In order to `print` the list it creates we need to use the `list()` method as well:

```
names_jobs = zip(names, jobs)
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

new = ???(???(
    countries,temp))
new.???('USA')
new.pop('SP')

print(new)
# {'UK': '29'}

```



* `dict`
* `zip`
* `pop`
* `push`
* `popitem`
* `fromkeys`
* `ip`
* `list`
* `list()`
* `dict()`
* `pop()`

---
## Revision

Convert the given two lists to a dictionary where `A` will contain the keys and `B` will give the values of the dictionary:
```
A = ['USA','UK','SP']
B = ['28','29','30']

C = ???(???(???,???))

print(C)
# {'USA': '28', 'UK': '29', 'SP': '30'}
```


* `dict`
* `zip`
* `A`
* `B`
* `C`
* `pop`
* `clear`
* `list`
