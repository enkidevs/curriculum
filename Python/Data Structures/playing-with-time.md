# Playing with `time` 
author: catalin

levels:

  - basic

  - medium

type: normal

inAlgoPool: false

category: feature

notes: >
  Corrected earlier issue with not saving, and updated the insight with my
  changes.

links:

  - >-
    [www.tutorialspoint.com](http://www.tutorialspoint.com/python/python_date_time.htm){website}

---
## Content

The `time` module is a widely used module for time manipulation, 
representation and  conversion.

Import the module:
```python
import time
```

The `time.time()` function returns 
the current time in seconds since 
"the Unix Epoch", i.e.  
12:00am January 1, 1970.

```python
cur_time = time.time()
print("Seconds since Epoch: ",\
cur_time)

Seconds since Epoch: 
1455637441.6129153
```

Pass `time.localtime` the number of 
seconds since the Epoch; it will 
return a **time-tuple** with the 
current local time:
```python
print("Current local time :",\
time.localtime(cur_time))
```

To make localtime's output more 
readable, use `time.asctime`:
```python
print("Formatted time:", \
time.asctime(time.localtime()))
Formatted time: 
Sat Jun 25 01:05:20 2016
```

`time.sleep(n)` can be used to make 
your program sleep for n seconds:
```python
print("sleeping")
time.sleep(5) #pauses for 5 seconds
print("woke up")
```

---
## Practice

Make your program sleep for 20 seconds:
```
import time
???.???(20)
```

* `time` 
*`sleep` 
*`t` 
*`sleep_seconds` 
*`hibernate` 
*`pause`

---
## Revision

What method from the `time` module is used to get the time in seconds since the Unix Epoch?

???

*`time` 
*`now` 
*`today` 
*`seconds_from_unix` 
*`seconds_from_start` 
*`today_seconds`