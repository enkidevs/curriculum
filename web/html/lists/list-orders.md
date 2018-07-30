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
  - '[CodePen: List Order](https://codepen.io/enkidevs/pen/EpmYmV){code}'
  - '[CodePen: List Order Reversed](https://codepen.io/enkidevs/pen/GBmKmy){code}'
  - '[CodePen: List Order Tricky Example](https://codepen.io/enkidevs/pen/xJdKrV){code}'
  - '[MDN docs for ordered lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){website}'
  - '[CSS list style type Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){website}'

---
# List Orders
---
## Content

When creating lists in HTML, you can specify the numbering type of your list by adding these attributes to your list:

* Uppercase letters: `type="A"`
* Lowercase letters: `type="a"`
* Uppercase Roman numbers: `type="I"`
* Lowercase Roman numbers: `type="I"`
* Begin numbering from a number: `start="50"`

Next, you can use the optional `start="value"` attribute to specify from which number/value the first item in the list starts counting from.

**Note: No matter which numbering type your list is set to, whether its roman, letters, or any other numeral, when specifying a value for the start attribute, the value is always specified with a number.**

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

![list-order](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22123%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22123%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3EAfter%20completing%20sections%201-9%2C%20do%3A%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%2010.%20Buy%20Cake%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2283%22%3E%2011.%20Open%20Cake%20Box%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%22100%22%3E%2012.%20Eat%20Cake%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/EpmYmV)-->

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

![list-order-reversed](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%205.%20Item%20A%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%204.%20Item%20B%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%203.%20Item%20C%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/GBmKmy)-->

Furthermore, you can modify the numbering of each individual list item by adding the `value` attribute. This is a tricky example where there are three items in this list, which is then reversed - which should order them as iii, ii, and i. But then on the second list item, the value was changed to 5(or v in this case), which then makes the third item of the list `4(iv)` counting down from the number above it. This may seem tricky, but hopefully it demostrates the control you have over the content.
```
<ol type="i" reversed>
  <li>Coffee</li>
  <li value="5">Tea</li>
  <li>Milk</li>
</ol>   
```
Result:

![list-order-value](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%20iii.%20Coffee%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%20v.%20Tea%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%20iv.%20Milk%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/xJdKrV)-->


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

Option 1
```
5. Item A
4. Item B
3. Item C
```

Option 2
```
5. Item C
6. Item B
7. Item A
```

Option 3
```
3. Item A
4. Item B
5. Item C
```

Option 4
```
3. Item C
4. Item B
5. Item A
```

* Option 1
* Option 2
* Option 3
* Option 4


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
