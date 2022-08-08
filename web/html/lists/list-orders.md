---
author: Stefan-Stojanovic
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [HTML <ol>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){documentation}
  - >-
    [CSS list style type
    Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# List Orders


---

## Content

When creating lists in HTML, you can specify the numbering type of your list by adding these attributes to your list:

- Uppercase letters: `type="A"`
- Lowercase letters: `type="a"`
- Uppercase Roman numbers: `type="I"`
- Lowercase Roman numbers: `type="i"`
- Begin numbering from a number: `start="50"`

**Start**

The `start` attribute was deprecated in HTML4 but reintroduced back in HTML5. This attribute is used to specify which number/value the list starts counting. No matter what numbering type is used, the starting value must be set as a number. `<ol start="3">` could be used to start the numbering at `3`, `c`, or even `III`.

Next, you can use the optional `start="value"` attribute to specify from which number/value the first item in the list starts counting from.

> 💡 No matter which numbering type your list is set to, whether its roman, letters, or any other numeral, when specifying a value for the start attribute, the value is always specified with a number.**

Example:

```html
<p>After completing sections 1-9, do:</p>
<ol start="10">
  <li>Buy Cake</li>
  <li>Open Cake Box</li>
  <li>Eat Cake</li>
</ol>
```

Result:

![list-order](https://img.enkipro.com/6e54eb88b9501c6232731c0117efffaa.png)

[View CodePen](https://codepen.io/enkidevs/pen/EpmYmV)

**Reversed**

The `reversed` attribute is of type boolean and is used to specify that the items in the list are in the reversed order (3,2,1, or c,b,a).

Example:

```html
<ol start="5" reversed>
  <li>Item A</li>
  <li>Item B</li>
  <li>Item C</li>
</ol>
```

Result:

![list-order-reversed](https://img.enkipro.com/362fd2676ebd21838bb38566c2b9658c.png)

[View CodePen](https://codepen.io/enkidevs/pen/GBmKmy)

Furthermore, you can modify the numbering of each individual list item by adding the `value` attribute. This is a tricky example where there are three items in this list, which is then reversed - which should order them as iii, ii, and i. But then on the second list item, the value was changed to 5(or v in this case), which then makes the third item of the list `4(iv)` counting down from the number above it. This may seem tricky, but hopefully it demostrates the control you have over the content.

```html
<ol type="i" reversed>
  <li>Coffee</li>
  <li value="5">Tea</li>
  <li>Milk</li>
</ol>
```

Result:

![list-order-value](https://img.enkipro.com/68acb74fec78584752578edefb78550e.png)

[View CodePen](https://codepen.io/enkidevs/pen/xJdKrV)


---

## Practice

Complete the HTML code to create a numbered list that starts at 10.

```html
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
List items will start numbering from 50: ???

- `ol`
- `start="10"`
- `li`
- type="A"
- type="a"
- type="I"
- start="50"
- `ul`
- `begin="10"`
- type="uppercase"
- type="lowercase"
- type="romanupper"
- begin="50"


---

## Revision

What does this code create? Choose the appropriate option.

```html
<ol start="5" reversed>
  <li>Item A</li>
  <li>Item B</li>
  <li>Item C</li>
</ol>
```

Option 1

```html
5. Item A
4. Item B
3. Item C
```

Option 2

```html
5. Item C
6. Item B
7. Item A
```

Option 3

```html
3. Item A
4. Item B
5. Item C
```

Option 4

```html
3. Item C
4. Item B
5. Item A
```

```plain-text
Option ???
```

- 1
- 2
- 3
- 4


---

## Quiz

### What does this code create?


Choose the appropriate option:

```html
<ol type="i" reversed>
  <li>Coffee</li>
  <li value="5">Tea</li>
  <li>Milk</li>
</ol>
```

A)

```html
iii. Milk
v. Tea
iv. Coffee
```

B)

```html
iii. Coffee
v. Tea
iv. Milk
```

C)

```html
3. Coffee
5. Tea
4. Milk
```

D)

```html
3. Coffee
2. 5
1. Milk
```

???

- Option B
- Option A
- Option C
- Option D
