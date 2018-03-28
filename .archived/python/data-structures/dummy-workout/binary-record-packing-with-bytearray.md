---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: tip

parent: bytearray-objects

notes: Changes made. See notes in Python-Insights-In-Review-remarks.txt

links:

  - >-
    [dabeaz.blogspot.co.uk](http://dabeaz.blogspot.co.uk/2010/01/few-useful-bytearray-tricks.html){website}

  - '[Code example](https://repl.it/Dca2){website}'

---
# Binary record packing with `bytearray`

---
## Content

Take a large list of integer coordinate pairs:
```python
import time

points = [ (i, j) for i in \
  range(1000) for j in range(1000) ]
```

The data can be written out as a binary  file with a `32-bit` integer header field, then the points as `32-bit` integers, using the `struct` module:
```python
import struct

t1 = time.clock()
file1 = open("file1.bin", "wb")
file1.write(struct.pack("I", \
  len(points)))
for x, y in points:
    file1.write(struct.pack("II", \
  x, y, ))
file1.close()
t2 = time.clock()
print("struct time: {}".\
  format(t2 - t1))
```

This will do multiple writes. The run time can be reduced some using a bytearray:

```python
t1 = time.clock()
file2 = open("file2.bin", "wb")
array = bytearray()
array.extend(struct.pack("I", len(points)))

for x, y in points:
    array.extend(struct.pack("II", \
  x, y))
file2.write(array)
file2.close()
t2 = time.clock()
print("bytearray time: {}".\
  format(t2 - t1))
```

For `1000×1000` elements, the difference will be around `0.05` seconds.

---
## Revision

What can be reduced using a `bytearray` when using data written out as a binary file? 

???

* Run time
* Code errors
* Lines of code