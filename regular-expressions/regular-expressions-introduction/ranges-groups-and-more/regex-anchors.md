---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - '[Regex Anchors](https://www.rexegg.com/regex-anchors.html){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Anchors


---

## Content

So far we've written regular expressions that can *partially match*[1] pieces of text, but this isn't always desirable!

Imagine if we wanted to match the word `success`, but our text also included the word `unsuccessful`. Our pattern would match on this too...

This is where **anchors** come in handy.

> 💡 The `^` is used to signify the *start of a string*, and the `$` character is used to signify the *end of a string*.

```plain-text
/^success/
```

The string must start with `success`.

`success` ✅
unsuccessful ❌

```plain-text
/.+\.$/
```

The string can have one or more character but must end with a `'.'`.

`sentence ending.` ✅
sentence ending? ❌

Note that `^` has different uses depending on whether it's inside or outside of square brackets , `[^...]`. This is where it's used to *exclude characters*.


---

## Practice

Which regex pattern would match with the first line of text?

???

`Mission: successful`	✅
Last Mission: unsuccessful ❌
Next Mission: successful upon capture of target ❌

- `/^(Mission: successful)/`
- `/\A(Mission: successful)/`
- `/(^Mission: successful)/`
- `/[^Mission: successful]/`


---

## Revision

Which regex pattern would match with the first line of text?

???

`text ends with abc`	✅
abc is at the start ❌
text has abc inside it ❌

- `/.*(abc)$/`
- `/^(abc).*/`
- `/.*(abc)\z/`
- `/.*$(abc)/`


---

## Footnotes

[1:Partial matching]
Partial matches are when the regex pattern matches some, but not all of the text. An example of partial matching would be if we used `/\w/` to attempt to match all of the following text:

'let's match this text...'

`/\w/` partially matches on any word character, but it misses the punctuation marks and white spaces.

We could use the regex pattern `/.+/` to match the entire text.

`let's match this text` ✅
