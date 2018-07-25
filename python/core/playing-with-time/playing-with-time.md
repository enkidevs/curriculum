---
author: catalin

levels:

  - basic

  - medium

type: normal

category: feature

inAlgoPool: false
aspects:
  - introduction
  - workout

links:

  - '[www.tutorialspoint.com](http://www.tutorialspoint.com/python/python_date_time.htm){website}'

standards:
  python.native-types-operations.8: 10


notes: >
  Corrected earlier issue with not saving, and updated the insight with my
  changes.

---

# Playing with `time`

---
## Content

The `time` module is widely used for time manipulation, representation and conversion.

Keep in mind an `import` is needeed:
```python
import time
```

The `time.time()` function returns the **current time** in **seconds** since "the Unix Epoch" (i.e. 12:00am January 1 1970).

```python
cur_time = time.time()
print("Seconds since Unix Epoch: ",
                          cur_time)

# ('Seconds since Unix Epoch: ',
#              1498231656.509076)
```

This time expressed in seconds can be *parsed* with the help of `time.localtime` which will return a tuple with all time-relevant information:

```python
time_struct = time.localtime(cur_time)
print(time_struct)

# time.struct_time(tm_year=2017, tm_mon=6,
# tm_mday=23, tm_hour=15, tm_min=33,
# tm_sec=56, tm_wday=4, tm_yday=174,
# tm_isdst=0)
```

If you want a more readable output, you can use `time.asctime` which can take the `time.struct_time` tuple as argument:

```python
print(time.asctime(time_struct))

# Fri Jun 23 15:27:36 2017
```

Another useful function of this module sis `time.sleep(n)` which can be used to make your program sleep for `n` seconds:
```python
print("good night")
time.sleep(5)
# pauses for 5 seconds
print("good morning")
```

---
## Practice

The following python script should print the current time in the following format:

e.g. Thur Jun 22 00:00:00 2017

Complete the gaps with the missing pieces of code.

```python
import ???

time_in_seconds = time.???
time_struct = time.???(time_in_seconds)
formatted = time.???(time_struct)

print(formatted)

```


* `time`
* `time()`
* `localtime`
* `asctime`
* `sleep`
* `localTime`
* `asciitime`
* `now()`
* `current()`

---
## Revision

The `time` module provides numerous useful function for time manipulation.

Supposing all required `import`s are resolved before, complete the following script such that **current time** is `print`ed as a time tuple (`time.struct_time`).

```python
print(???(???())
```


* `localtime`
* `time`
* `asctime`
* `sleep`
* `now`
* `current`
* `time_struct`
* `struct_time`
