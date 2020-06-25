---
author: emmab

tags:
  - introduction

type: normal

category: must-know

aspects:
  - introduction

---

# Escaping Characters

---
## Content

Because regex reserves the dot as a special character, we can't actually specify a dot/period with `.`.

> 💡 In order to use these reserved characters in a literal sense we need to *add a backslash before them*. In doing so, we say that we "escape the character".

```
/.+\./
```

This regex specifies that there are one or more characters, `/.+/`, followed by a literal dot `/\./`.


| Text | Match |
|------|-------|
| cat. | ✅     |
| 896. | ✅     |
| ?=+. | ✅     |
| abc1 | ❌     |


Similarly, if we wanted to use an actual backslash, we'd have to escape it too!

```
/\\.+/
```

Here, the `/\\/` is escaping the backslash, and the `/.+/` is saying that there are one or more characters following the backslash.

`\backslash_demo` ✅

Forward slashes must also always be escaped:

```
/\/.+/
```

`/forward_slash_demo` ✅

---
## Practice

Which regex code would match the first string, but not the second:

???

`...` ✅
--- ❌

* `/\.{3}/`
* `/.../`
* `/.{3}/`
* `/\S{3}/`

---
## Revision

Which regex code would match the first string, but not the second:

???

`//` ✅
?? ❌

* `/\/{2}/`
* `/\\\\/`
* `/\.{2}/`
* `/\w{2}/`
