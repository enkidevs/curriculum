---
author: lizTheDeveloper

levels:

  - beginner
  - basic

tags:

  - introduction
  
aspects:
  - introduction
  - workout

type: exercise

linkType: glitch
link: https://glitch.com/edit/#!/enki-javascripting-12


standards:
  javascript.data-types-structures.3: 1000
  javascript.data-types-structures.4: 1000
  javascript.data-types-structures.6: 1000
  javascript.evaluate-expressions.6: 1000
  javascript.standard-library.4: 1000



links:
  - '[Arrays in JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array){documentation}'
  - '[Javascript Indexed Collections Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Indexed_collections){walkthrough}'
---
# JavaScript Functional Programming
---

## Exercise


In the file named `answer.js`, define a variable named `numbers` that references this array:

    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

Like above, define a variable named `filtered` that references the result of `numbers.filter()`.

The function that you pass to the `.filter()` method will look something like this:
```
    function evenNumbers (number) {
      return number % 2 === 0;
    }
```
Use `console.log()` to print the `filtered` array to the terminal.

Click `Show` to check to see if your program is correct.
Be sure to Remix the project, and turn that in as your solution.
