---
author: kapnobatai136

tags:
  - discussion

type: normal

category: coding

setupCode:
  startingPoint: |
    # Hey there
    # Welcome to your first Python condition exercise

    # Start by creating two variables. Example:
    num1 = 7
    num2 = 4

    # Then, use an if-else statement to compare which is larger
    
    # Then output a message if the first one is larger ("num1 is larger than num2") or vice versa ("num2 is larger than num1")

    # Test your code by assigning different values to num1 and num2 to see the different output messages based on the comparison


---

# Collection Exercise

---

## Content

> 👩‍💻 Your task is to:
> - **define two numbered variables**
> - **compare the two numbers**
> - **print a message based on the evaluation**

Challenge yourself to complete this task and practice your programming skills. Even if you encounter difficulties, keep trying and learn from the experience.

That being said, if you're not sure how to get started, check out this footnote[1].

When you're finished, feel free to share your solution with the community, join in on discussions and upvote solutions from your fellow learners!

Remember, learning is more effective when we do it with others.

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Here's an example to help you get started:


Start by creating two variables, num1 and num2, and assign any numerical values to them.
```python
num1 = 31
numm2 = 333
```

Use an if-else statement to compare the values of num1 and num2.
```python
if num1 > num2:
  # code here
else:
  # code here
```

If num1 is larger than num2, print "num1 is larger than num2".
```python
print(f'{num1} is larger than {num2}')
print(num1, 'is larger than' ,num2)
```

Otherwise, if num2 is larger than num1, print "num2 is larger than num1".
```python
print(f'{num2} is larger than {num1}')
# 333 is larger than 31
print(num2, 'is larger than' ,num1)
# 333 is larger than 31
```

If neither condition is true (i.e., num1 and num2 are equal), print "num1 and num2 are equal".
For this you will need two `if` conditions:
```python
if num1 > num2:
  # print
elif num2 > num1:
  # print
else: 
  # print
```

Test your code by assigning different values to num1 and num2 to observe the different output messages based on the comparison.

Feel free to modify the code and experiment with different values to further explore the behavior of if-else statements in Python.