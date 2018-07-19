---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction
standards:
  web.markup-text.2: 10
links:
  - '[MDN docs for ordered lists]](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){website}'
  - '[CSS list style type Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){website}'

---
# List Orders
---
## Content

When creating lists in HTML, you can specify the numbering type of your list:

Uppercase letters: type="A"
Lowercase letters: type="a"
Uppercase Roman numbers: type="I"
Lowercase Roman numbers: type="I"
Begin numbering from a number: start="50"

Next, you can use the `start="value"` attribute to specify from which number/value the first item in the list starts counting from.

**Note: No matter which numbering type your list is set to, whether its roman, letters or any other numeral, when specifying a value for the start attribute, the value is always specified with a number.**

Example:
```
<p>After completing sections 1-9, do:</p>
<ol start="10">
  <li>Buy Cake</li>
  <li>Open Cake Box</li>
  <li>Eat Cake</li>
</ol>
```
Result:
```
 10. Buy Cake
 11. Open Cake Box
 12. Eat Cake
```

You can also set the `reversed` attribute to count backward in your list.
Example:
```
<ol start="5" reversed>
  <li>Item A</li>
  <li>Item B</li>
  <li>Item C</li>
</ol>
```
Result:
```
 5. Item A
 4. Item B
 3. Item C
```

Furthermore, you can modify the numbering of each individual list item by adding the `value` attribute:
```
<ol type="i" reversed>
  <li>Coffee</li>
  <li value="5">Tea</li>
  <li>Milk</li>
</ol>   
```
Result:
```
iii. Coffee
v. Tea
iv. Milk
```

Explaining the output:
 The list starts at `3(iii)` because the list is reversed and the total number of items is `3`. On the second list item, we have changed the value to 5(v), which makes the third item of the list `4(iv)`

---
## Practice

Complete the HTML code to create a numbered list that starts at 10.
```
<p>After the other 9 steps, do this:</p>
<A B>
  <C>Buy Cake</C>
  <C>Open Cake Box</C>
  <C>Eat Cake</C>
</A>
```

A: ???
B: ???
C: ???

Match the terms to the descriptions:

List items will be numbered with uppercase letters: ???
List items will be numbered with lowercase letters: ???
List items will be numbered with uppercase roman numbers: ???
List items will begin numbered with 10: ???


* `ol`
* `start="10"`
* `li`
* type="A"
* type="a"
* type="I"
* start="50"
* `ul`
* `begin="10"`
* type="uppercase"
* type="lowercase"
* type="romanupper"
* begin="50"

---
## Revision

What does this code create? Choose the appropriate option.

```
<ol start="5" reversed>
  <li>Item A</li>
  <li>Item B</li>
  <li>Item C</li>
</ol>
```

???

* Option 1
```
5. Item A
4. Item B
3. Item C
```
* Option 2
```
5. Item C
6. Item B
7. Item A
```
* Option 3
```
3. Item A
4. Item B
5. Item C
```
* Option 4
```
3. Item C
4. Item B
5. Item A
```

---
## Quiz

### What does this code create?

Choose the appropriate option:

```
<ol type="i" reversed>
  <li>Coffee</li>
  <li value="5">Tea</li>
  <li>Milk</li>
</ol>   
```

A)
```
iii. Milk
v. Tea
iv. Coffee
```
B)
```
iii. Coffee
v. Tea
iv. Milk
```
C)
```
3. Coffee
5. Tea
4. Milk
```
D)
```
3. Coffee
2. 5
1. Milk
```

???

* Option B
* Option A
* Option C
* Option D
