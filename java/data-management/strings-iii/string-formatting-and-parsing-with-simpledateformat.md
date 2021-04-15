---
author: catalin
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# String formatting and parsing with `SimpleDateFormat`


---

## Content

`SimpleDateFormat` is a class that provides the user the ability to normalize dates, `format()` `String`s into `Date` objects and vice-versa.

A `SimpleDateFormat` object  will need  to be created containing the date format of `String`.

Convert `String` to `Date`:

- The `parse()` method can be called to get the desired `Date`:

```java
String dateString = "16-03-1991";
Date date = new SimpleDateFormat(
  "dd-MM-yyyy").parse(dateString);
```

- The default *timezone* is the OS's *timezone*. You can change this :

```java
SimpleDateFormat.setTimeZone(timeZoneObj);
```

- Parsing begins by default at index `0` , but the starting index can be specified in the method.

Convert `Date` to `String`:

- The `format()` will return the desired `String` :

```java
Date date = Calendar.getInstance().
   getTime();        
String string = new SimpleDateFormat
  ("mm-DD-yyyy").format(date);
```

Keep in mind that `SimpleDateFormat` is not `Thread` safe. Avoid static objects and using it outside a `Synchronized` block.


---

## Practice

Complete the following Java code snippet to convert the string into a date:

```java
String dateString = "31-07-1996";
Date date = new 
 ???("dd-MM-yyyy")
.???(dateString);
```

- `SimpleDateFormat`
- `parse`
- `Date`
- `NewDate`
- `format`
- `DateFormat`


---

## Revision

Complete the following Java code snippet to convert the date into a string:

```java
Date today = Calendar.???()
  .getTime();
String convert =
  new SimpleDateFormat("mm-DD-yyyy")
  .???(date);
```

- `getInstance`
- `format`
- `getDate`
- `getDay`
- `parse`
- `thread`
