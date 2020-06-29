---
author: catalin
type: normal
category: feature
inAlgoPool: false
links:
  - '[docs.python.org](https://docs.python.org/3.5/library/math.html){website}'
notes: |+
  Math modules workout.
  Notes by Vasudev:
  All stdlib modules are always available,
  so the math module is not special in
  this regard. So correct the opening
  sentence, by removing the words "every
  time - available".  Also change the word
  "specialized" to "common" - because there
  is nothing very special about the functions
  in the math module, they are normal math
  functions.  Correct line spacing between
  titles and items in insight.  Confirm usage
  of modf and also mention fmod and the
  difference between them.

---

# Python's `math`


---

## Content

The `math` module provides the user with mathematical functions common in the C standard library.

Import the module:

```plain-text
import math
#constants
print(math.pi) # Number PI
print(math.e) # Euler's number
```

Check if a value is `Nan` or `INF`:

```plain-text
math.isnan(var)
math.isinf(var)

```

You can get a `tuple` containing the fractional and whole number parts of a number:

```plain-text
print(math.modf(4.4))
# (0.4, 4.0)
```

Factorial and gamma (factorial for real numbers) operations can be calculated:

```plain-text
math.factorial(intNr)
math.gamma(realNr)

```

Trigonometric functions:

```plain-text
math.sin(x)
math.atan(x)
```

Angular conversions:

```plain-text
math.degrees(x) # radians to degrees
math.radians(x) # degrees to radians
```

Power and logarithmic functions:

```plain-text
math.exp(x) # returns e**x
math.log(x[,base]) # base is by default e
math.pow(x,y) # returns x^y
```


---

## Practice

Check if `var` has the `INF` value:

```plain-text
import math

???.???(var)
```

- `math`
- `isinf`
- `mathematics`
- `is_inf`
- `infinite`


---

## Revision

Using the `math`  module, assign to `a` the value of `PI` :

```plain-text
a = ???.???
```

- `math`
- `pi`
- `constants`
- `e`
- `3.14`
 
