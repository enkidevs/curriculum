# Creating Loops
author: mayyay

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[Learn More](https://vuejs.org/v2/guide/#Conditionals-and-Loops)'

---
## Content

Reusing elements of your design is easy
  with Vue.js. Loops can be made with by
  using `v-for`.

HTML
```
<div id="app">
  <h1>Things I like:</h1>
  <ul>
    <li v-for="thing in things">
      {{ thing.name }}
    <li>
  </ul>
</div>
```
JS
```
var app = new Vue({
  el: '#app',
  data: {
    things: [
      { name: 'Ice Cream' },
      { name: 'Chocolate' },
      { name: 'JavaScript' }
    ]
  }
})
```
---
## Revision

What directive is used to create loops?
???

* v-for
* v-while
* v-loop
