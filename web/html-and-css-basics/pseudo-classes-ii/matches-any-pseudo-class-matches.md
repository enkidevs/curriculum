---
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - css4


links:

  - '[css4.rocks](http://css4.rocks/selectors-level-4/){website}'


---

# Matches-any pseudo-class `:matches`

---
## Content

The `:matches` pseudo-class allows the application of rules to groups of selectors.


```css
p:matches(.alert,.error,.warn){
    color:red;
}
``` 

The above will make the text of all elements matching `.alert`, `.error` and `.warn` red.

Could be used to apply a particular style rule to a similar element group.

---
## Practice

Complete the following code snippet to set the color of the chosen selectors text blue:

```
p???(s1, s2, s3){ 
    ???:red; 
} 
```

* `:matches` 
* `color` 
* `:selects` 
* `background-color` 
* `.matches` 
* `.selects` 
* `

---
## Revision

What does the following CSS code snippet do?
```css
p:matches(s1, s2, s3) {
   font-family: "Arial Narrow";
   background-color: red;
}
```
???

* Sets the font family and background colour for all elements matching s1, s2 and s3.
* Sets the font family and background colour for all elements not matching s1, s2 and s3.
* Sets the font family and background colour for all elements.
* Does nothing.

