---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Grouping


---

## Content

We can group certain items using parenthesis, `( )`.

Say we want to match both the singular and plural forms of a word. We can use grouping to include the elements that should be kept together.

Remember that the `?` character makes the thing before it optional. In this case it makes the *grouping* optional.

```plain-text
/regex(es)?/
```

`regex` ✅
`regexes` ✅

```plain-text
/(abc)+/
```

`abc` ✅
`abcabcabcabc` ✅

We can build more complex groupings using the *or* operator, `|`.

```plain-text
/(a|b)c/
```

This means that the text must match `ac` *or* `bc`.

If we wanted to build a regex pattern to match the following three strings:

`regular expressions`
`regex`
`regexp`

We could write:

```plain-text
/reg(ular expressions|exp?)/
```

This means that the pattern must start with 'reg', it then has either 'ular expressions' *or* 'ex' plus an optional 'p'.


---

## Practice

Which of the following would be a valid match for this regex pattern:

```plain-text
/color:\s(green|red|blue)/
```

???

- `color: red`
- `color:green`
- `color:blue`
- All of them


---

## Revision

Which of the following would be a valid match for this regex pattern:

```plain-text
/choice:\s(head|tail)s/
```

???

- `choice: heads`
- `choice:heads`
- `choice:head`
- `choice: heads or tails`
