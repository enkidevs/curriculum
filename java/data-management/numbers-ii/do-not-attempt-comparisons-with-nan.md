# Do not attempt comparisons with NaN
author: fahimrahman

levels:

  - basic

  - beginner

type: normal

category: best practice

links:

  - >-
    [www.securecoding.cert.org](https://www.securecoding.cert.org/confluence/display/java/NUM07-J.+Do+not+attempt+comparisons+with+NaN){website}

---
## Content

A NaN or *Not-a-Number* value is used to represent the result of certain invalid operations such as dividing zero by zero. NaN constants of both float and double type are predefined as `Float.NaN` and `Double.NaN`.

Since NaN is unordered and numerical comparison operators (`<`, `==`, etc.) return the opposite boolean of the expected one, direct comparisons with NaN should not be performed.

Example of attempting a direct comparison with NaN:
```
double x = 0.0;
double ans = Math.tan(1/x);
// Here ans becomes NaN

if (ans == Double.NaN) {
   System.out.println("ans is NaN");
   // Doesn't print
   // Comparison is always false
}
```
Instead, the `Double.isNaN()` method should be used in this case:
```
double x = 0.0;
double ans = Math.tan(1/x);

if (Double.isNaN(ans)) {
   System.out.println("ans is NaN");
   // Prints 'ans is NaN'
}
```

---
## Practice

Check if the value of `x` is `NaN`:
```
double x = 13.0/0;
???.???(???);
```

* `Double`
* `isNaN`
* `x`
* `==`
* `Integer`
* `Math`

---
## Revision

What value will `x` have here?
```
double x = Math.tan(1/0.0);
```
???
* `NaN`
* `0`
* `pi`
* `Math.PI`
* `3.14`

---
## Quiz

headline: is NaN equal to NaN?

question: |
  // What will the following snippet print?
  double x = Double.NaN;
  if(x == Double.NaN) { System.out.print(x); }
  System.out.print("false");

answers:
  - false
  - NaNfalse
  - Double.NaNfalse
  - NaN
