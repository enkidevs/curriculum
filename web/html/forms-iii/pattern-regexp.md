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

links:
  - '[CodePen: Pattern Attribute](https://codepen.io/enkidevs/pen/OErEda){code}'
  - '[CodePen: 5-10 numbers/letters Pattern](https://codepen.io/enkidevs/pen/vaBvBG){code}'
  - '[CodePen: Password Pattern](https://codepen.io/enkidevs/pen/aKPaRg){code}'

---
# Pattern
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
```
<form
  action="/action.php">
  Enter 5 Digit Zip Code:
  <input type="text" name="area_code"
  pattern="[0-9]{5}"
  title="Zip code">
  <input type="submit">
</form>
```

![form-pattern](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22144%22%3E%3Cdefs%3E%3Cpath%20id%3D%22b%22%20d%3D%22M20%2038h131v19H20z%22%2F%3E%3Cfilter%20id%3D%22a%22%20width%3D%22109.2%25%22%20height%3D%22163.2%25%22%20x%3D%22-4.6%25%22%20y%3D%22-31.6%25%22%20filterUnits%3D%22objectBoundingBox%22%3E%3CfeOffset%20in%3D%22SourceAlpha%22%20result%3D%22shadowOffsetOuter1%22%2F%3E%3CfeGaussianBlur%20in%3D%22shadowOffsetOuter1%22%20result%3D%22shadowBlurOuter1%22%20stdDeviation%3D%222%22%2F%3E%3CfeComposite%20in%3D%22shadowBlurOuter1%22%20in2%3D%22SourceAlpha%22%20operator%3D%22out%22%20result%3D%22shadowBlurOuter1%22%2F%3E%3CfeColorMatrix%20in%3D%22shadowBlurOuter1%22%20values%3D%220%200%200%200%200.329411765%200%200%200%200%200.560784314%200%200%200%200%200.8%200%200%200%201%200%22%2F%3E%3C%2Ffilter%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22144%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cuse%20fill%3D%22%23000%22%20filter%3D%22url%28%23a%29%22%20xlink%3Ahref%3D%22%23b%22%2F%3E%3Cpath%20fill%3D%22%23FAFFBD%22%20stroke%3D%22%23548FCC%22%20stroke-linejoin%3D%22square%22%20d%3D%22M20.5%2038.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2253%22%3E902100%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2230%22%3EEnter%205%20Digit%20Zip%20Code%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22gray%22%20d%3D%22M29.5%2058.7282L22.15997%2066.5H15c-1.38071%200-2.5%201.11929-2.5%202.5v53c0%201.38071%201.11929%202.5%202.5%202.5h275c1.38071%200%202.5-1.11929%202.5-2.5V69c0-1.38071-1.11929-2.5-2.5-2.5H36.84003L29.5%2058.7282z%22%2F%3E%3Crect%20width%3D%2223%22%20height%3D%2223%22%20x%3D%2220%22%20y%3D%2275%22%20fill%3D%22%23FFA303%22%20rx%3D%223%22%2F%3E%3Ccircle%20cx%3D%2232%22%20cy%3D%2292%22%20r%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M30%2080h4v8h-4z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%2252%22%20y%3D%2292%22%3EPlease%20match%20the%20requested%20format.%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23444%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%2252%22%20y%3D%22112%22%3EZip%20code%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/OErEda)-->

In the example above, we use the `pattern` attribute to set a specific pattern, which in this case means that the value of the input has to be numerical and must contain 5 characters.

You can also create different patterns using this technique. For instance, if you specify `pattern="[a-zA-Z0-9]{5-10}"` which checks for any any alphanumeric value ranging from lower and uppercase a-z letters and any number from 0-9 with any combination between 5 and 10 characters.

<!--[View CodePen](https://codepen.io/enkidevs/pen/vaBvBG)-->

Another popular example, where a more complicated pattern is used to force the user to make a more complicated password:

```
<form
  action="/action.php">
  Password:
  <input
   type="password" name="pw"
    pattern="(?=.*\d)(?=.*[a-z])
      (?=.*[A-Z]).{8,}"
    title="The password must contain
     one lowercase and uppercase letters,
     one number,
     and have a minimum of eight
     and maximum of twenty characters">
  <input type="submit">
</form>
```

<!--[View Codepen](https://codepen.io/enkidevs/pen/aKPaRg)-->

In the example above, the user has to have at least one lowercase letter, one uppercase letter, one number, and a minimum of 8 characters and a maximum of 20 characters.

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

* `pattern`
* `expression`
* `compare`
* `limitation`

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
