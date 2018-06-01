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

---
# Use `try` instead of `if` to speed up your code

---
## Content

Example:

If you need to count different words' frequencies within a corpus, then you probably will do:
```
wdict = {}
for word in corpus:
    if word not in wdict:
        wdict[word] = 0
    wdict[word] += 1
```
However, if the corpus is large enough, this signle line can cost your code hours to run. So, instead, I suggest:
```
wdict = {}
for word in corpus:
    try:
        wdict[word] += 1
    except KeyError:
        wdict[word] = 1
```
It's important to catch the expected `KeyError exception`, and not have a default except clause to avoid trying to recover from an exception you really can't handle by the statement(s) in the try clause.