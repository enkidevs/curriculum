---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - '[docs.python.org](https://docs.python.org/2/library/stdtypes.html){website}'

---
# `startswith` and `endswith` support tuple arguments

---
## Content

Return all the urls ending with html, xml or css.
```python
extensions = ('.html', '.xml', '.css')
supported = url.endswith(extensions)
```

As an alternative, you could also loop over the extensions:
```python
any([s.endswith(i) for i in extensions])
```