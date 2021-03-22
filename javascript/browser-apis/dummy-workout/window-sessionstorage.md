---
author: tommarshall
levels:
  - basic
  - advanced
  - medium
type: normal
category: must-know
links:
  - >-
    [www.nczonline.net](https://www.nczonline.net/blog/2009/07/21/introduction-to-sessionstorage/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Window.sessionStorage


---

## Content

*`sessionStorage`* is an object which stores data for just one navigation session. Session storage lasts for as long as the tab is open, it remains when the page is refreshed and or reloaded but terminates once the tab has been closed.

Opening a new tab or window will initiate a new session storage object.

Saving data to session storage and retrieving it:

```javascript
sessionStorage.setItem('itemName', 'info');
var data = sessionStorage.
                  getItem('itemName');
console.log(data); // prints 'info'
```

Example of session storage autosaving the value of a text field and restoring this field if a browser is refreshed:

```javascript
var test = document.getElementById("input");
// find autosaved value caused by refresh
if (sessionStorage.getItem("autosave")) {
  test.value = sessionStorage.
                   getItem("autosave");
}
// listen for text field changes
test.addEventListener("change", function() {
  sessionStorage.setItem("autosave", 
                         test.value);
});
```


---

## Practice

Save a piece of data to session storage.

```javascript
sessionStorage.???('???', 'info');
```

- setItem
- itemName
- set
- newItem
- allocItem
- itemNum
- session


---

## Revision

When will `sessionStorage` terminate?

???

- When tab is closed.
- When page is refreshed.
- When page is reloaded.
- When page is scrolled.
