---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know

---

# Data Type Conversion

---

## Content

In **R**, it is often necessary to convert data from one type to another. For example, you may need to convert a string to a number, or a vector to a matrix. Here are some common functions for converting data types in **R**:

- `as.numeric`: Converts an object to numeric (integer or double) type.
- `as.integer`: Converts an object to integer type.
- `as.double`: Converts an object to double (floating point) type.
- `as.character`: Converts an object to character (string) type.
- `as.logical`: Converts an object to logical (TRUE/FALSE) type.
- `as.vector`: Converts an object to vector type.
- `as.matrix`: Converts an object to matrix type.

Note: Each of these methods has an `is.name` methods. For instance, `is.numeric`, `is.double` and so on. They are used to check if the value is the appropriate type.

They return `TRUE` or `FALSE`.

Another way to check which data type a value has is with the `typeof()` method.

We will discuss some examples on how to use them in the following insights.

