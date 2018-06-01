---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - speed-up-code

notes: ''

links:

  - '[comp.lang.python](comp.lang.python){website}'

  - '[groups.google.com](groups.google.com){website}'

---
# Pros and cons of inline `import`

---
## Content

*import* statement can be executed almost everywhere. 

Pros: It will be useful to put them inside functions to restrict their visibility or reduce the *init* time. 

Cons: Putting inline *import* can cause significant overhead.

Experiment:

case 1:
```
def doit1():
    import string 
    ###### import statement inside function
    string.lower('Python')

for num in range(100000):
    doit1()
```

case 2:
````
import string 
###### import statement outside function
def doit2():
    string.lower('Python')

for num in range(100000):
    doit2()
```
By running both codes, we will see:
```
>>> import timeit
>>> t = timeit.Timer(setup= \
'from __main__ import doit1',\
stmt='doit1()')
>>> t.timeit()
11.479144930839539
>>> t = timeit.Timer(setup= \
'from __main__ import doit2', \
stmt='doit2()')
>>> t.timeit()
4.6661689281463623
```

*doit2()* runs much faster than *doit1()*.