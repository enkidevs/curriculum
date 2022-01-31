---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    // Iterate over each property of the object and output it to the console.
    
    let person = {
      name: 'Alan',
      surname: 'Turing',
      education: 'Sherborne School',
      country: 'England'
    };

    // Type your code here:
    
---

# Iterate over Object Values

---

## Content
  
> 👩‍💻 Your task is to write a program that **iterates over each property of an object and outputs it to the console**.

Example object to iterate:

```javascript
let person = {
  name: 'Alan', 
  surname: 'Turing', 
  education: 'Sherborne School', 
  country: 'England'
};
```

To solve this, try using the following concepts:
- variable creation `person = { name:'Alan', age:...}`
- flow control (`for...of`)
- Object global methods(`keys()`, `entries()`, ...)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!


---

## Footnotes

[1: Hints]

Create the object and use a loop to go through each key-value pair.

Example:
```javascript
for (let [x, y] of Object.entries(obj)) {
  // ...
}
```
