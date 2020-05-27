---
author: emmab

tags:
  - introduction

type: normal

category: must-know

aspects:
  - introduction

---

# Grouping

---
## Content

We can group certain items using parenthesis, ( ). 

Say we want to match both the singular and plural forms of a word. We can use grouping to include the elements that should be kept togther. 

Remember that the '?' character makes the thing before it optional. In this case it makes the *grouping* optional.

```
/regex(es)?/
```

`regex` ✅
`regexes` ✅

```
/(abc)+/
```

`abc` ✅
`abcabcabcabc` ✅

We can build more complex groupings using the *or* operator, '|'.

```
/(a|b)c/
```

This means that the text must match `ac` *or* `bc`.

If we wanted to build a regex pattern to match the following three strings:

`regular expressions`
`regex`
`regexp`

We could write:

```
/reg((ular expressions)|ex(p)?)/
```

This means that the pattern must start with 'reg', it then has either 'ular expressions' *or* 'ex' plus an optional 'p'.

---
## Practice

Which of the following would be a valid match for this regex pattern:
 
```
/color:\s(green|red|blue)/
```

???

* `/color: red/`
* `/color:green/`
* `/color:blue/`
* `/color: green or red or blue/`

---
## Revision

Which of the following would be a valid match for this regex pattern:
 
```
/choice:\s(head|tail)s/
```

???

* `choice: heads`
* `choice:heads`
* `choice:head`
* `choice: heads or tails`