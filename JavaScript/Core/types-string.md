# Types - String
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

You can declare a string value in JavaScript using either single or double quotes - JavaScript will accept either:
```
var company = "Enki";
var company = ‘Enki’;
```

If you have longer text you can wrap multiple lines by using the + operator:

```
var longerText = "abc" +
		"def" +
		"ghi";
```

You can also use the backslash character to continue text to multiple lines (make sure nothing is after the backslash):

```
var longerText = "abc \
		def \
		ghi";
```

There are also special characters that can be used by preceding the character with a backslash. Here are some common ones:
```
\’ single quote
\" double quote
\\ backslash
\n new line
\r character return
\t tab
```

---
## Practice

What special character is used to write **multi line** strings?

```javascript
var myString = 'this will ??? 
       be a multi line string';
```

*`\n`
*`+`
*`"`
*`\\`
*`\r`
*`\t`

---
## Revision

Which one of the following is correct ?
```
var company = "Enki";
var company = 'Enki';
```

???

*both
*first
*second
*none