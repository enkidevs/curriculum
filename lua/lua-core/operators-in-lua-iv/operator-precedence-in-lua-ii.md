---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone



---

# Operator Precedence II

---

## Content

Another rule that has to be considered when evaluating expressions is association. **Most operators, excluding exponentiation (^) and concatenation (..), are left associative**[1].

> ^ and .. are right associative[2].

For instance, `x + 3 < y / 7 + 3` is a complex expression involving many operators. Following the rules of precedence and association, the expression is equivalent to `(x + 3) < ((y / 7) + 3)`. 

Had we ignored the rules of association, the expression could have looked like `(x + 3) < (y / (7 + 3))`, resulting in a different output.

> To avoid worrying about these specific rules, **its recommended to use explicit parentheses when writing expressions**, as parentheses override precedence and association.

---

## Practice

Given the two expressions `a ^ b ^ c`, which of the following options is equivalent?
- `a^(b^c)`
- `(a^b)^c`
- `a^(b)^c`

---

## Revision

Given the two expressions ` x ^ 2 * 8`, which of the following options is equivalent?
- `(x^2) * 8`
- `x^(2 * 8)`
- `x^(2) * 8`


---

## Footnotes

[1: Left Associativity]

When evaluating an operator that is left associative, the evaluation for that operator proceeds from left to right. In other words, operators will group from the left.

For example, `a - b - c` will be evaluated as `(a - b) - c`.


[2: Right Associativity]