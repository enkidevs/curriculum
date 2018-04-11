---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

---
# Pattern (regexp)
---
## Content

The HTML input form attribute `placeholder` is used to display a short hint that describes the expected value for the selected input field. It is displayed in the input field until the user enters a value.

Example:
```
<form 
  action="/action.php">
  <input 
    type="text" name="full-name"
     placeholder="Full name"><br>
  <input 
    type="submit" 
    value="Submit">
</form> 
```

The placeholder attribute works for several input types:
 - `email`
 - `password`
 - `search`
 - `tel`
 - `text`
 - `URL`

In the next example, we use the pattern attribute to set a specific pattern, which in this case means that the value of the input has to be either lower or uppercase letters and can contain from 1-50 characters.

Example:
```
<form 
  action="/action.php">
  <input 
    type="text" name="full-name"
     placeholder="Full name"
     pattern="[A-Za-z]{1,50}"><br>
  <input 
    type="submit" 
    value="Submit">
</form> 
```

You can also add different patterns.
For instance, if you specify `pattern="[a-zA-Z0-9]{10}"`, the result can be any alphanumerical value ranging from lower and uppercase a-z letters and any number from 0-9 with a maximum of 10 characters. 

The value in the pattern is a regular expression or `regexp`.

Another example, where the pattern is used to force the user to make a more complicated password:
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

---
## Practice

Mark the following strings that would pass this pattern: 

```
<input 
  type="text" name="test" 
  pattern="[a-zA-Z0-9]{10}" 
  title="">
```

???
???
???
???

* enkiCode
* Colorado
* 12Num34
* 8675309
* http://enki.com
* Mrs. Mannis
* 1,2andCounting!
* (303)422-2280
* CodeChallenge

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


