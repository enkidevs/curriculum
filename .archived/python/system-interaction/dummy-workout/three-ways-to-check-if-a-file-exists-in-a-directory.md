---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Three ways to check if a file exists in a directory

---
## Content

1) `os.path.isfile(path)`
```python
os.path.isfile('foo.txt')
# True
f = open('foo.txt', 'r')
# Traceback (most recent call last):
# File "", line 1, in
# IOError: [Errno 13] Permission denied: 
# 'foo.txt'
```
This function only checks if the path is a file, not its accessibility.

2) `os.access(path, mode)`
```python
# Check for read access to foo.txt
os.access('foo.txt', os.R_OK) 
# Check for write access to foo.txt
os.access('foo.txt', os.W_OK)
```
This function tests if the current user (with the real uid/gid) has access (read and/or write privileges) to a given path. 
`os.R_OK` return `True` if readable, 
`os.W_OK` return `True` if writable.

3) Attempting to access (`open`) the file

```python
try:
    f = open('foo.txt')
    f.close()
except IOError as e:
    print('unable to open the file')
```
This will absolutely guarantee existence and accessibility.