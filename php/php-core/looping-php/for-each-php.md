---
author: tommarshall
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# foreach Loop

---

## Content

A `foreach` loop is used to iterate over arrays.

Here's an example:
```php
$array = array(1, 2, 3, 4, 5);

foreach ($array as $value) {
  echo $value;
}
// Output: 12345
```

In this case, the `foreach` loop is iterating over each value in the `$array`. For each iteration, `$value` is assigned the current item's value, and the code inside the loop is executed.

It's also possible to access both the key and the value of the current item:
```php
$array = array("a" => "Apple", "b" => "Banana", "c" => "Cherry");

foreach ($array as $key => $value) {
  echo "$key: $value\n";
}
// Output: 
// a: Apple
// b: Banana
// c: Cherry
```

---

## Practice

What is the output of the following code?

```php
$array = array(10, 20, 30);

foreach ($array as $value) {
  echo $value;
}
// Output: ???
```

- 102030
- 1020
- 123
- 302010

---
## Revision

Fill in the blanks to output the values of the array:
```php
$array = array("Red", "Green", "Blue");

foreach ($array as $???) {
  echo $value;
}
// Output: RedGreenBlue
```

- value
- key
- index
- part