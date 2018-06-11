---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

links:
  - '[MDN docs for description lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl){website}'
  
---
# Description Lists
---
## Content

The HTML `<dl>`, or **The Description List element** is used to represent a description list or a glossary. The items/terms in the `<dl>` element are represented with the `<dt>` element, and the descriptions are specified with the `<dd>` element.

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
```
Enki
  Founded in 2015, 
    Enki is a team of developers, 
    educators, and designers. 
    We represent 7 countries, 8 timezones,
    9 spoken languages, and 1 goal 
    — supporting lifelong learners.
```

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
```
Enki Pro
Enki
    Founded in 2015, 
    Enki is a team of developers, 
    educators, and designers. 
    We represent 7 countries, 8 timezones,
    9 spoken languages, and 1 goal 
    — supporting lifelong learners.
```

Again same example, except this time we added another term and a description of that term:
```
<dl>
  <dt>Enki Pro</dt>
  <dt>Enki</dt>
  <dt>Enki App</dt>
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

As you can see in the examples above, you can add as many terms and descriptions as you may want or need for your HTML page or document.
Furthermore, adding description lists is good for displaying metadata as well. This can be done in a key-value pair like so:
```
<dl>
  <div>
    <dt>Name</dt>
    <dd>Enki</dd>
  </div>
  <div>
    <dt>Founded</dt>
    <dd>2015</dd>
  </div>
  <div>
    <dt>Location</dt>
    <dd>London</dd>
  </div>
</dl>
```
As you can see in the example above, we have wrapped each key-value pair with a `<div>` element. This is useful for either styling purposes or when using microdata.

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
