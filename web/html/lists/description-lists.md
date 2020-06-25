---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

aspects:
  - introduction

links:
  - '[HTML <dl> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl){documentation}'

---
# Description Lists
---
## Content

The HTML `<dl>`, or the **Description List** element is used to represent a description list or a glossary. The items/terms in the `<dl>` element are represented with the `<dt>` element, and the descriptions are specified with the `<dd>` element. The purpose for this is organizing the information in logical ways for search engines. It also provides clear methods for styling with CSS, so don't overlook this method when seeing that the default styling appears that it just indents the content.

Simple example:
```html
<dl>
  <dt>Enki</dt>
  <dd>
    Founded in 2015,
    Enki is a team of developers,
    educators, and designers.
    We represent 7 countries, 8 timezones,
    9 spoken languages, and 1 goal
    — supporting lifelong learners.
  </dd>
</dl>
```
Result:

![list-descriptive](https://img.enkipro.com/7431bf8fe4b8d5c99fe57b1d03c12be2.png)

[View CodePen](https://codepen.io/enkidevs/pen/LByPZZ)

Next to having one term and one description, you can have multiple terms as well as multiple descriptions.

The same example with 1 term added:
```html
<dl>
  <dt>Enki Pro</dt>
  <dt>Enki</dt>
  <dd>
    Founded in 2015,
    Enki is a team of developers,
    educators, and designers.
    We represent 7 countries, 8 timezones,
    9 spoken languages, and 1 goal
    — supporting lifelong learners.
  </dd>
</dl>
```
Result:

![list-descriptive-multi](https://img.enkipro.com/26a164b28de87f8688342fca9f782042.png)

[View CodePen](https://codepen.io/enkidevs/pen/ZjKzON)

Again same example, except this time we added another term and a description of that term:
```html
<dl>
  <dt>Enki</dt>
  <dt>EnkiApp</dt>
  <dt>EnkiBot</dt>
  <dd>
    Founded in 2015,
    Enki is a team of developers,
    educators, and designers.
    We represent 7 countries, 8 timezones,
    9 spoken languages, and 1 goal
    — supporting lifelong learners.
  </dd>
  <dd>
    Level up your programming skills
    or learn to code with daily workouts
    — anytime, anywhere!
    Choose any one of our dev skill topics
    to get a personalized training path
    and improve your skills.
    Track your progress, unlock games,
    join a team of friends or coworkers,
    and rise through the ranks!
  </dd>
</dl>
```

[View CodePen](https://codepen.io/enkidevs/pen/rrmBWB)

As you can see in the examples above, you can add as many terms and descriptions as you may want or need for your HTML page or document.

Furthermore, adding description lists can be useful for displaying data that follows the key-value pair organization. Like all the other examples here, this is mainly useful for both search engines to understand the organization of the data as well as for CSS styling purposes.

```html
<dl>
  <div>
    <dt>Name:</dt>
    <dd>Enki</dd>
  </div>
  <div>
    <dt>Founded:</dt>
    <dd>2015</dd>
  </div>
  <div>
    <dt>Location:</dt>
    <dd>London</dd>
  </div>
</dl>
```
Result:

![list-descriptive-pair](https://img.enkipro.com/4a81d545df16d7c61f4e2d754b2c00dc.png)

[View CodePen](https://codepen.io/enkidevs/pen/wxdwoX)

---
## Practice

Complete the HTML code to create a descriptive list.

```html
<A>
  <B>HTML</B>
  <C>Content of web page</C>
  <B>CSS</B>
  <C>Styles of web page</C>
</A>
```

A: ???
B: ???
C: ???

* `dl`
* `dt`
* `dd`
* `ul`
* `li`
* `di`
* `ld`
* `td`

---
## Revision

Which HTML elements are used to describe a term or name in a description list?
Option A, B, C or D?

```html
<!--A-->
<dl>
  <dt>HTML</dt>
  <dd>Content of web page</dd>
</dl>

<!--B-->
<dt>
  <dl>HTML</dl>
  <dd>Content of web page</dd>
</dt>

<!--C-->
<ol>
  <dt>HTML</dt>
  <dd>Content of web page</dd>
</ol>

<!--D-->
<list>
  <term>HTML</term>
  <desc>Content of web page</desc>
</list>
```


???

* A
* B
* C
* D

---
## Quiz

### How much do you know about HTML lists?

Which of these HTML list elements is best to use to create a glossary?

???

* description lists
* ordered lists
* unordered lists
* list items
