---
author: Aaron7Sun
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
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

```python
import string
t = string.???("It's ???weather")
print(t.???(weather="sunny"))
```

Using `f-strings`, print "Hey Enki, how are you?":

```python
app = 'Enki'
print(f'Hey ???, how are you?')
```

- `Template`
- `$`
- `substitute`
- `{app}`
- `string.Template`
- `{`
- `app`
- `format`
- `%`
- `}`

---

## Revision

Substitute the substring using curly brackets:

```python
my_string = "Good {time}"
print(my_string.???(???="evening"))
```

- `format`
- `time`
- `first`
- `{time}`
- `substitute`
- `sub`
