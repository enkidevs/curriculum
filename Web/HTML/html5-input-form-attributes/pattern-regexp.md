# Pattern (regexp)
author: matthewleach

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep


---
## Content

New content to go here. The author must be updated to match a valid Enki account.

---
## Practice

Mark the following strings that would pass this pattern: 

`<input type="text" name="test" pattern="[a-zA-Z0-9]{10}" title="">`

+ enkiCode
+ Colorado
+ 12Num34
+ 8675309
- http://enki.com
- Mrs. Mannis
- 1,2andCounting!
- (303)422-2280
- CodeChallenge

---
## Revision

Which form attribute is used to only allow a value that follows a unique expression?

`<form action="file.php">
 Country code: <input type="text" name="us-state" ???="[A-Za-z]{2}" title="US State Abbrivation">
 <input type="submit">
</form>`

* pattern
* expression
* compare
* limitation

---
## Quiz

How much do you know about forms and accepting certain data?

Which regular expression should be set as the pattern based on the title?

`<form action="file.php">
 Country code: <input type="text" name="username" pattern="???" title="Only letters (either case), all numbers, and the underscore; no more than 15 characters.">
 <input type="submit">
</form>`

* [A-Za-z0-9_]{1,15}
* [A-Za-z0-9_]{1-15}
* [a-zA-Z0-9_]{15}
* [A-Z-a-z-0-9_]{1-15}


