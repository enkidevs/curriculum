---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/integrating-with-other-libraries.html){website}

---
# Use **React** with other libraries

---
## Content

The best way to use other libraries with **React** is to make use of the event life cycle of a component.

 `componentDidMount()` and `componentDidUpdate()` methods are the best places to insert the logic of other libraries:


```
 componentDidMount: function() {
    $(this.refs.placeholder)
                .append($('<span />'));
  },
```

Custom *event listeners* and *events streams* are usually inserted in the same way, in the same place.
 
