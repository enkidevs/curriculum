---
author: Aaron7Sun

levels:

  - advanced

  - medium

type: normal

category: tip

tags:

  - speed-up-code

notes: ''

---
# To make your code run faster, allow functions to handle data aggregations

---
## Content

Compared to using builtin functions, the overhead of calling custom functions is relatively high. To minimize this overhead, make sure that your functions can handle aggregation.

Experiment:

case 1:
```python
import time
x = 0
def doit1(i):
    global x
    x = x + i
num_range = range(100000)
```
case 2:
```python
import time
x = 0
def doit2(list):
    global x
    for i in list:
        x = x + i
num_range = range(100000)
```
we can see from the output:
```python
t = time.time()
for i in list:
    doit1(i)
print "%.3f" % (time.time()-t)
# 0.758
t = time.time()
doit2(list)
print "%.3f" % (time.time()-t)
# 0.204
```
`doit2` runs about 4 times faster!
 
