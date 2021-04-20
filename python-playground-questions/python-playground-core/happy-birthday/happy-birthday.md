---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Happy Birthday

---

## Content

Using the `datetime` and/or `time` modules, create a program that will check if the current date is your birthday. If it is, print a happy birthday message. If it is not, output how many days left till your birthday.

To achieve this, you can use the following concepts:
- importing (`import`, `from...import...`)
- built-in methods(`now()`,`year()`,`month()`,...)

Learning is best when we give it an honest try. Even if we make a mistake, we'll remember it and do better next time.

That being said, if you're not sure how to get started, check out this footnote[1]. 

When you're finished, feel free to share your solution with the community, join in on discussions and upvote solutions from your fellow learners!

Remember, learning is more effective when we do it with others.

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Start by importing `date` from `datetime`.

Then create a date for today and a date for your birthday.

Initiate an `if` statement that checks if the current date equals your birthday.

If `True`, `print` a happy birthday message.

If not, subtract today's date from your birthday. Use and `abs()` method to always get a positive number. Then print how many days are left until your birthday.