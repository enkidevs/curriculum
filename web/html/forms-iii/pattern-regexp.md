---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

links:

---
# The `pattern` Attribute
---
## Content

The HTML input form attribute `pattern` is used to specify a regular expression where the `<input>` elements value is checked against.

The pattern attribute works for several input types:
 - `date`
 - `email`
 - `password`
 - `search`
 - `tel`
 - `text`
 - `URL`

Example:
```html
<form
  action="/action.php">
  Enter 5 Digit Zip Code:
  <input type="text" name="area_code"
  pattern="[0-9]{5}"
  title="Zip code">
  <input type="submit">
</form>
```

![form-pattern](https://img.enkipro.com/bd5954a1fe9042cf879c65bfa6f43766.png)

[View CodePen](https://codepen.io/enkidevs/pen/OErEda)

In the example above, we use the `pattern` attribute to set a specific pattern, which in this case means that the value of the input has to be numerical and must contain 5 characters.

You can also create different patterns using this technique. For instance, if you specify `pattern="[a-zA-Z0-9]{5-10}"` which checks for any any alphanumeric value ranging from lower and uppercase a-z letters and any number from 0-9 with any combination between 5 and 10 characters.

[View CodePen](https://codepen.io/enkidevs/pen/vaBvBG)

Another popular example, where a more complicated pattern is used to force the user to make a more complicated password:

```html
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

[View CodePen](https://codepen.io/enkidevs/pen/aKPaRg)

In the example above, the user has to have at least one lowercase letter, one uppercase letter, one number, and a minimum of 8 characters and a maximum of 20 characters.

---
## Practice

Mark the string that would NOT pass this pattern:

```html
<input
  type="text" name="test"
  pattern="[a-zA-Z0-9]{0,10}"
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

```html
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

* `pattern`
* `expression`
* `compare`
* `limitation`

---
## Quiz

### How much do you know about forms and accepting certain data?

When you look at the title, which regular expression do you think should be set as the pattern?

```html
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
