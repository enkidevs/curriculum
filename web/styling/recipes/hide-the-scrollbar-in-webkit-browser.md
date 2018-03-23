---
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - browser

  - scrollbar


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/3296644/hiding-the-scrollbar-on-an-html-page){website}'


---

# Hide the scrollbar in webkit browser

---
## Content

To hide the scrollbar on a particular element: 

```
#element::-webkit-scrollbar { 
    display: none; 
}
```
Or, hide all scrollbars on the page:
```
::-webkit-scrollbar { 
    display: none; 
}
```

---
## Practice

Complete the code snippet to hide all scrollbars on a webkit browser page:

```
??? {  
    display: ???;  
} 
```

* `::-webkit-scrollbar` 
* `none`  
* `.webkit-scrollbar` 
* `::webkit-scrollbar` 
* `hide` 
* `false`

---
## Revision

What does the following piece of code do? 
```css
::-webkit-scrollbar {
   display: none;
}
```
???

* Hides all the scrollbars on the page.
* Hides all the scrollbars of a particular element.
* Displays all scrollbars on the page.
* Displays all the scrollbars of a particular element.

