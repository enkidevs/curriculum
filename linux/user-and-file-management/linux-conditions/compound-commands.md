---
author: mihaiberq
type: normal
category: feature
links:
  - >-
    [Bash test and comparison
    functions](https://www.ibm.com/developerworks/library/l-bash-test/index.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The `((` and `[[` Compound Commands


---

## Content

While `test` does a good job at evaluating expressions, requiring different operators for strings and integers comparison can be cumbersome to use.

The `(( expression ))` command evaluates an arithmetic expression and returns *1* if expression evaluates to *0*, and *0* otherwise. The advantage of using this command is that you don't have to escape the characters:

```bash
(( 1 == 2 )) && echo true || echo false
# false
(( 4/2 - 2 )); echo $?
# 1
```

On the other hand, `[[ expression ]]` allows you to combine tests that are allowed for the `test` command (same syntax, comprising files, strings or integers):

```bash
# regex matching
[[ "abc de" == a[bc]*\ d* || \
    (( 2 > 1 )) ]]; echo $?
# 0
[[ 3 -gt 2 ]]; echo $?
# 0
```

And also files:

```bash
[[ -w $HOME || 2 > 1 ]] && echo "true"
#  true
```


---

## Practice

What type of expression can go between `[[ ]]`?

???

- Any expressions that test also accepts
- Only string comparison expressions
- Only arithmetic expressions
- Any type expression


---

## Revision

Which of the following statements about `(( ))` is false?

```plain-text
1. It accepts only arithmetic exceptions
2. Operators like > and < have to be escaped
3. The equal sign (=) represents assignment
```

???

- 2
- 1
- 3
- none
