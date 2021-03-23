---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - '[The Dot Wildcard](https://www.regular-expressions.info/dot.html){website}'
  - >-
    [Regex
    Metacharacters](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Character_Classes){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Wildcards I


---

## Content

Wildcards can be used to add flexibility when you don't want to specify characters.

> In regex, the dot (`.`) wildcard can be used to stand in for nearly *any* character[1] which is why it's the most powerful wildcard.

```plain-text
/abc.*/
```

Using the above pattern, we'd be able to match the following texts because they all *start with 'abc'* and then have *zero or more other characters*.

`abc` ✅
`abc1` ✅
`abc!f@g£jf$h%^` ✅

> 💡 If we want to match only *word characters*, like letters, numbers and underscores, then we can use `\w`.

```plain-text
/\w/
```

This pattern would match each **individual** character in the following text as `\w` allows for capitalized letters:

`a` `b` `c` `A` `B` `C` `1` `2` `3` `_` ✅

If we want to match the entire string then we can use `/\w+/` or `/\w*/`.

`abcABC123_` ✅

`\w+` can be used to match any word character in a mixed string:

`abc`!`f`@`g`£`jf`$`h`%^

> 💡 Using \W does the opposite of \w and would match all *non-word characters*.

Similarly, we can use `/\W+/` or `/\W*/` to match an entire string:

`!@£$%^&` ✅
abc ❌

Note, the backslash is necessary syntax here. While some symbols are directly interpreted like special characters (e.g. `'.'`, `'?'` etc.), some only work like special characters if preceeded by a backslash.


---

## Practice

Which regex pattern would match the full string?

`123`

???

- `/\w+/`
- `/\W+/`
- `/\D+/`
- `/12+/`


---

## Revision

Which regex pattern would match the full string?

`...`

???

- `/\W+/`
- `/\w+/`
- `//w+/`
- `//W+/`


---

## Footnotes

[1:Dot Wildcard]
The dot wildcard can be used to match every character **except** for line break characters.

This exception exists mostly because of historic reasons. The first tools that used regex were line-based. They would read a file line by line, and apply the regular expression separately to each line. The effect is that with these tools, the string could never contain line breaks, so the dot could never match them.

Fun fact: JavaScript recently introduced the `s` modifier that makes the dot actually match all characters.
