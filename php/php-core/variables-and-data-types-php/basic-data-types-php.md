---
author: Stefan-Stojanovic
type: normal
category: must-know

---

# Basic Data Types in PHP

---

## Content

In PHP, variable are loosely typed, meaning that they are converted automatically as needed by the context where they are being used.

However, for better clarity, we can specify the "type" of data that a variable can hold. 

**PHP** supports eight primitive types which can be grouped into three categories:

### Scalar types
---

- `int` for storing integers, like 5, -10, or 3333.
- `float` (or double) for storing floating-point numbers, like 3.14159 or -0.001.
- `string` for storing sequences of characters, like "Hello, world!" or "Enki".
- `bool` for storing Boolean values, i.e., true or false.

### Compound types
---

- `array` for storing multiple values in a single variable.
- `object` for storing instances of classes.

### Special types
---

- resource for storing references to functions and resources external to PHP.
- NULL for a variable with no value.

**Note:** that PHP is a dynamically typed language and type declaration is not required.

> We will cover the scalar types in this workout.