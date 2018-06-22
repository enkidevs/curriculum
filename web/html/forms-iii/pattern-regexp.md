---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10
  web.html-forms.8: 10

aspects:
  - introduction
  - workout
  - deep

---
# Pattern (regexp)
---
## Content

The HTML input form attribute `pattern` is used to specify a regular expression, `patternt="regexp"`, that the `<input>` elements value is checked against.

The pattern attribute works for several input types:
 - `date`
 - `email`
 - `password`
 - `search`
 - `tel`
 - `text`
 - `URL`

Example:
```
<form
  action="/action.php">
  Area dial code:
  <input
    type="text" name="area_code"
  pattern="[0-9]{1,5}"
  title="Area dial code">
  <input type="submit">
</form>
```

In the example above, we use the `pattern` attribute to set a specific pattern, which in this case means that the value of the input has to be numerical and can contain from 1-5 characters.

You can also add different patterns.
For instance, if you specify `pattern="[a-zA-Z0-9]{10}"`, the result can be any alphanumerical value ranging from lower and uppercase a-z letters and any number from 0-9 with a maximum of 10 characters.


Another example, where a more complicated pattern is used to force the user to make a more complicated password:
```
<form
  action="/action.php">
  Password:
  <input
   type="password" name="pw"
    pattern="(?=.*\d)(?=.*[a-z])
      (?=.*[A-Z]).{8,20}"
    title="The password must contain
     one lowercase and uppercase letters,
     one number,
     and have a minimum of eight
     and maximum of twenty characters">
  <input type="submit">
</form>
```

In the example above, the user has to have at least one lowercase letter, one uppercase letter, one number and a minimum of 8 characters and a maxium of 20 characters.

---
## Practice

Mark the string that would NOT pass this pattern:

```
<input
  type="text" name="test"
  pattern="[a-zA-Z0-9]{10}"
  title="">
```

???

* `http://enki.com`
* `enkiCode`
* `Colorado`
* `12Num34`
* `8675309`


---
## Revision

Which form attribute is used to only allow a value that follows a unique expression?

```
<form
  action="file.php">
 Country code:
 <input
  type="text" name="us-state"
  ???="[A-Za-z]{2}"
  title="US State Abbrivation">
 <input type="submit">
</form>
```

* pattern
* expression
* compare
* limitation

---
## Quiz

### How much do you know about forms and accepting certain data?

When you look at the title, which regular expression do you think should be set as the pattern?

```
<form action="file.php">
 Country code:
 <input
  type="text" name="username"
  pattern="???"
 title="Only letters (either case),
  all numbers, and the underscore;
  no more than 15 characters.">
 <input
  type="submit">
</form>
```

* `[A-Za-z0-9_]{1,15}`
* `[A-Za-z0-9_]{1-15}`
* `[a-zA-Z0-9_]{15}`
* `[A-Z-a-z-0-9_]{1-15}`
