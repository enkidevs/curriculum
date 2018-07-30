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
  - '[CodePen: List Description](https://codepen.io/enkidevs/pen/LByPZZ){code}'
  - '[CodePen: List Multi Description](https://codepen.io/enkidevs/pen/ZjKzON){code}'
  - '[CodePen: List Multi Terms and Descriptions](https://codepen.io/enkidevs/pen/rrmBWB){code}'
  - '[CodePen: Description lists](https://codepen.io/enkidevs/pen/wxdwoX){code}'
  - '[MDN docs for description lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl){website}'

---
# Description Lists
---
## Content

The HTML `<dl>`, or the **Description List** element is used to represent a description list or a glossary. The items/terms in the `<dl>` element are represented with the `<dt>` element, and the descriptions are specified with the `<dd>` element. The purpose for this is organizing the information in logical ways for search engines. It also provides clear methods for styling with CSS, so don't overlook this method when seeing that the default styling appears that it just indents the content. 

Simple example:
```
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

![list-descriptive](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22159%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22159%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2254%22%20y%3D%2249%22%3EFounded%20in%202015%2C%20Enki%20is%20a%20team%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%2266%22%3Eof%20developers%2C%20educators%2C%20and%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%2283%22%3Edesigners.%20We%20represent%207%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%22100%22%3Ecountries%2C%208%20timezones%2C%209%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%22117%22%3Espoken%20languages%2C%20and%201%20goal%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%22134%22%3E%E2%80%94%20supporting%20lifelong%20learners.%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2232%22%3EEnki%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/LByPZZ)-->

Next to having one term and one description, you can have multiple terms as well as multiple descriptions.

The same example with 1 term added:
```
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

![list-descriptive-multi](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22199%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22199%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2254%22%20y%3D%2291%22%3EFounded%20in%202015%2C%20Enki%20is%20a%20team%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%22108%22%3Eof%20developers%2C%20educators%2C%20and%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%22125%22%3Edesigners.%20We%20represent%207%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%22142%22%3Ecountries%2C%208%20timezones%2C%209%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%22159%22%3Espoken%20languages%2C%20and%201%20goal%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254%22%20y%3D%22176%22%3E%E2%80%94%20supporting%20lifelong%20learners.%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2232%22%3EEnki%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2251%22%3EEnkiApp%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2270%22%3EEnkiBot%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/ZjKzON)-->

Again same example, except this time we added another term and a description of that term:
```
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

<!--[View CodePen](https://codepen.io/enkidevs/pen/rrmBWB)-->

As you can see in the examples above, you can add as many terms and descriptions as you may want or need for your HTML page or document.

Furthermore, adding description lists can be useful for displaying data that follows the key-value pair organization. Like all the other examples here, this is mainly useful for both search engines to understand the organization of the data as well as for CSS styling purposes. 

```
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

![list-descriptive-pair](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22137%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22137%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3EName%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3EFounded%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%22100%22%3ELocation%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2262%22%20y%3D%22117%22%3ELondon%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2262%22%20y%3D%2283%22%3E2015%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2262%22%20y%3D%2249%22%3EEnki%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/wxdwoX)-->

---
## Practice

Complete the HTML code to create a descriptive list.

```
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

???

* A
```
<dl>
  <dt>HTML</dt>
  <dd>Content of web page</dd>
</dl>
```
* B
```
<dt>
  <dl>HTML</dl>
  <dd>Content of web page</dd>
</dt>
```
* C
```
<ol>
  <dt>HTML</dt>
  <dd>Content of web page</dd>
</ol>
```
* D
```
<list>
  <term>HTML</term>
  <desc>Content of web page</desc>
</list>
```

---
## Quiz

### How much do you know about HTML lists?

Which of these HTML list elements is best to use to create a glossary?

???

* description lists
* ordered lists
* unordered lists
* list items
