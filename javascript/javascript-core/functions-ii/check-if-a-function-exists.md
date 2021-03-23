---
author: catalin
type: normal
category: feature
links:
  - >-
    [How to check if function exists in JavaScript?](https://stackoverflow.com/questions/1042138/how-to-check-if-function-exists-in-javascript){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Check If a Function Exists


---

## Content

There are certain scenarios where scripts are shared between different parts of a website. This can result in calling functions that *do not exist*. 

Here is how you can check if a `function` exists beforehand:

```javascript
if (typeof myFunction === "function") { 
    // safe to use the function
    myFunction();
}
```


---

## Practice

When can a scenario occur where calling functions do not exist? 

???

- When scripts are shared between different parts of a website.
- When functions haven't been declared properly.
- When scripts haven't been passed or imported properly.


---

## Revision

Complete the `if` statement to check if a function exists:

```javascript
if(??? myFunction === ???){
  myFunction();
}
```

- typeof
- ”function”
- function
- !
- undefined
 
