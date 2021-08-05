---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # 👋 Welcome to the Python coding playground. 
    # Example output:
    # Your birthday is in 131 days

    # Type your code here:
      
---

# Happy Birthday

---

## Content

> 👩‍💻 Using the `datetime` or `time` modules, your task is to define a `happyBirthday` function. It should:
> - **check if the current date is your birthday**
> - **If it is, print a happy birthday message**
> - **If not, output how many days until your birthday**

To solve this, try using the following concepts:
- importing (`import`, `from...import...`)
- built-in methods(`now()`, `year()`, `month()`,...)

Give it an honest try, and feel free to share your solution!

You can always read this footnote[1] or the solutions posted in the comments section if you're stuck.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

You will need two dates; one for today and another for your birthday.

Use a conditional statement to create two outputs. For days left until your birthday, subtract today's date from your birthday within the `abs()` method to get a positive number as the result.
