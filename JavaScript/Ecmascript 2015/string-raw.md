# String.Raw
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

String.Raw is an inbuilt tag function of template literals that allows you to interpret a template literal string as unprocessed text. If you are familiar with C# it’s a bit like prefixing a string with @.

It is best explained with an example:

In JavaScript \n means new line so if we had the following template literal:
```
`Line1\nLine2$!`;
```
This would be interpreted as:

```
"Line1
Line2"
```

Sometimes it is desirable not to interpret the string and use it in its raw format.
String.Raw allows you to process the string in its raw format:

```
String.raw `Line1\nLine2`;
"Line1\nLine2"
```

Expressions are still processed when using String.raw:

```
var company="Enki";
String.raw `Line1\n${company}Line2`;
"Line1\nEnkiLine2"
```
---