---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - truthiness

  - truthy

  - falsy

  - boolean

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Glossary/Truthy){website}

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Glossary/Falsy){website}

---
# Truthiness

---
## Content

In JavaScript, a *Truthy* value is any value which, when evaluated in a boolean context, is `true`. Similarly, a *Falsy* value is any value which evaluates to `false` in a boolean context.

Here are some examples of Falsy values:
```
if (false) ...      // Falsy
if (null) ...       // Falsy
if (undefined) ...  // Falsy
if (0) ...          // Falsy 
if (NaN) ...        // Falsy 
if ('') ...         // Falsy
```

Since all of these values are Falsy, the `if` block will be skipped in each case.

Note that this is not the case for the following values:

```
if ({}) ...            // Truthy
if ([]) ...            // Truthy   
if (new Number(0)) ... // Truthy

```

If the above feels counter-intuitive, just remember that all JavaScript objects (even empty ones) are Truthy.

---
## Practice

Which of the following are *truthy* and which are *falsy*? T for truthy, F for falsy... ???

```javascript
if (false) ...
if ({}) ...
if (null)
if (NaN) ...
if ([]) ...
```

* F T F F T
* F T F T T
* T F T T F
* T T T F F

---
## Revision

`false` ,`null` ,`NaN` are ??? values, while all javascript objects are ??? .

* falsy
* truthy
* true
* false