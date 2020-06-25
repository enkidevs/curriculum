---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip
aspects:
  - introduction
  - workout
standards:
  python.standard-library-data.6: 10
  python.data-structures-uses.5: 10

---

# Three ways to substitute a substring of a string

---
## Content

- `string.Template`
```python
import string
t = string.Template("Hello $name")
print(t.substitute(name='Ted'))
# Hello Ted
```
`$identifier` names a substitution placeholder matching a mapping key of "identifier".

- `percent-style`

```python
t = "Hello %(name)s"
print(t % dict(name='Ted'))
# Hello Ted
```
General form: `f % v`, where `f` is the template string and `v` specifies the value.

- `curly-bracket`
```python
t = "Hello {name}"
print(t.format(name='Ted'))
# Hello Ted
```
Format strings contain “replacement fields” surrounded by curly braces `{}`.

### Update: 

- There is a new and improved way of formatting strings in Python called `f-strings`.

It is the easiest way to format strings and is done like so:
```python
name="Ted"
print(f'Hello {name}')
# Hello Ted
```

---
## Practice

Using `string.Template` , substitute the following substring:
```
import string
t = string
 .???("It's ???weather")
print(t
 .???(weather="sunny"))
```

The fastest and easiest way of formatting strings is by using: ???

* `Template`
* `$`
* `substitute`
* `f-strings`
* `string.Template`
* `percent-style`
* `curly-bracket`
* `format`
* `%`
* `{`
* `dict`
* `mod`

---
## Revision

Substitute the substring using curly brackets:
```python
my_string = "Good {time}"
print(my_string
  .???(???="evening"))
```

* `format`
* `time`
* `first`
* `{time}`
* `substitute`
* `sub`
