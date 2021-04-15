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

# Ranges I


---

## Content

The wildcards that we learnt about previously (`.`, `\w`, `\W`, `\s`, `\S`, `\d`, `\D`) are sometimes *too powerful.*

Say we want to match *specific characters* instead of every character of a certain type, then we can use **ranges**.

> 💡 Ranges are defined in square brackets and are much stricter than using any of the more general wildcards.

For example, say we want to match the words `can`, `man` and `fan`, but *not* the words `dan`, `ran` or `pan`, we could write our regex as:

```plain-text
/[cmf]an/
```

Our words would have to start with `c`, `m` *or* `f`, and end in `an`.

We can also use the `-` symbol to build an inclusive range:

`/[0-9]/` means any digit between zero and nine, and is equivalent to `/\d/`.

`/[a-z]/` means any lowercase letter from 'a' to 'z'.

`/[a-zA-Z0-9_]/` is equivalent to `/\w/`

So now we can make our wildcards *more specific* by using ranges. This is super useful!

Take a real-world example. We can use ranges to check whether a list of credit card numbers are Visa or Mastercard, and not American Express.

```plain-text
/[45]\d+/
```

The cards must either start with a `4` or a `5` and be followed by one or more digit.

`5131421201839759` ✅
`4273221260472240` ✅
357578543114510 ❌


---

## Practice

How would you specify a range of letters from 'a' to 'm', taking into account capitalization, using regex?

???

- `/[a-mA-M]/`
- `/[am-AM]/`
- `/[a-m]/`
- `/[amAM]/`


---

## Revision

How would you specify a range of letters from 'a' to 'c', and a range of numbers from '1' to '3', using regex?

???

- `/[a-c1-3]/`
- `/[ac-13]/`
- `/[a-c-1-3]/`
- `/[ac13]/`
